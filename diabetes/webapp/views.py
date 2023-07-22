from django.contrib import auth, messages
from django.contrib.auth import get_user_model
from django.shortcuts import render, redirect
from .forms import RegistrationForm
from django.contrib.auth.decorators import login_required

User = get_user_model()


def index(request):
    return render(request, 'index.html')


@login_required
def home(request):
    return render(request, 'home.html')


def register_view(request):
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            # Redirect to a success page or login page
            return redirect('login')
            # return redirect('index')
    else:

        form = RegistrationForm()

    return render(request, 'register.html', {'form': form})


def loginUser(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)

        if user is not None:
            auth.login(request, user)
            return redirect('home')
        else:
            messages.info(request, 'invalid credentials')
            return redirect('login')

    else:
        return render(request, 'login.html')



def dashboard(request):
  
    return render(request, 'home.html')

def logoutUser(request):
    auth.logout(request)
    return redirect('/')


from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from .forms import UserProfileForm

from django.contrib.auth import update_session_auth_hash


@login_required
def update_profile(request):
    user_profile = User.objects.get(id=request.user.id)
    if request.method == 'POST':
        # form = UserProfileForm(request.POST, instance=user_profile)
        form = UserProfileForm(request.POST, request.FILES, instance=request.user)
        if form.is_valid():
            user = form.save(commit=False)
            password = form.cleaned_data.get('password')
            if password:
                user.set_password(password)
                update_session_auth_hash(request, user)  # Update the session to prevent log out
            user.save()

            return redirect('home')
    else:
        form = UserProfileForm(instance=user_profile)

    return render(request, 'update.html', {'form': form})


from django.shortcuts import render
from .models import DiabetesData
import numpy as np
from .forms import DiabetesForm

# using library

@login_required
def predict_diabetes(request):
    if request.method == 'POST':
        form = DiabetesForm(request.POST)
        if form.is_valid():
            # Retrieve the current user
            user = request.user
            # Get the input data from the request
            pregnancies = int(request.POST.get('pregnancies'))
            glucose = float(request.POST.get('glucose'))
            blood_pressure = float(request.POST.get('blood_pressure'))
            skin_thickness = float(request.POST.get('skin_thickness'))
            insulin = float(request.POST.get('insulin'))
            bmi = float(request.POST.get('bmi'))
            diabetes_pedigree = float(request.POST.get('diabetes_pedigree'))
            age = int(request.POST.get('age'))

            # Load the trained logistic regression model
            model = DiabetesData.train_logistic_regression()

            # Perform the diabetes prediction
            input_data = np.array(
                [[pregnancies, glucose, blood_pressure, skin_thickness, insulin, bmi, diabetes_pedigree, age]])
            prediction = model.predict(input_data)[0]

            # Convert the prediction to a human-readable format
            if prediction == 1:
                outcome = 'Positive'
            else:
                outcome = 'Negative'

            # Create a new instance of DiabetesData
            data = DiabetesData(
                user=user,  # Assign the current user
                pregnancies=pregnancies,
                glucose=glucose,
                blood_pressure=blood_pressure,
                skin_thickness=skin_thickness,
                insulin=insulin,
                bmi=bmi,
                diabetes_pedigree=diabetes_pedigree,
                age=age,
                outcome=outcome,

            )

            # Save the form data to the database
            data.save()

            # Display the prediction result on the page
            return render(request, 'predict.html', {'form': form, 'result': outcome})
    else:
        form = DiabetesForm()
    return render(request, 'predict.html', {'form': form})






@login_required()
def diabetes_records(request):
    # Fetch diabetes data records for the current user
    diabetes_data = DiabetesData.objects.filter(user=request.user)

    return render(request, 'diabetes_records.html', {'diabetes_data': diabetes_data})


from django.shortcuts import render
from django.http import HttpResponse
from reportlab.lib.pagesizes import letter
from reportlab.lib import colors
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle
from .models import DiabetesData


@login_required()
def download_diabetes_records(request):
    # Fetch diabetes data records for the current user
    diabetes_data = DiabetesData.objects.filter(user=request.user)

    # Create a response object with PDF content type
    response = HttpResponse(content_type='application/pdf')

    # Set the file name for the downloaded PDF
    user_name = request.user.name if request.user.is_authenticated else 'Anonymous'
    file_name = f"{user_name}-diabetes_records.pdf"
    response['Content-Disposition'] = f'attachment; filename="{file_name}"'

    # Create the PDF document
    doc = SimpleDocTemplate(response, pagesize=letter)

    # Define the table data
    table_data = [
        ['Pregnancies', 'Glucose', 'Blood Pressure', 'Skin Thickness', 'Insulin', 'BMI', 'Diabetes Pedigree', 'Age',
         'Outcome']]
    for data in diabetes_data:
        table_data.append([
            str(data.pregnancies),
            str(data.glucose),
            str(data.blood_pressure),
            str(data.skin_thickness),
            str(data.insulin),
            str(data.bmi),
            str(data.diabetes_pedigree),
            str(data.age),
            str(data.outcome)
        ])

    # Define the table style
    table_style = TableStyle([
        ('BACKGROUND', (0, 0), (-1, 0), colors.gray),
        ('TEXTCOLOR', (0, 0), (-1, 0), colors.whitesmoke),
        ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
        ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
        ('FONTSIZE', (0, 0), (-1, 0), 11),
        ('BOTTOMPADDING', (0, 0), (-1, 0), 12),
        ('BACKGROUND', (0, 1), (-1, -1), colors.beige),
        ('GRID', (0, 0), (-1, -1), 1, colors.black),
    ])

    # Create the table
    table = Table(table_data, style=table_style)

    # Build the PDF document
    elements = []
    elements.append(table)
    doc.build(elements)

    return response


