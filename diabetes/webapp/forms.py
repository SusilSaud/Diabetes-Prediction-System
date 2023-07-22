from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import CustomUser


class RegistrationForm(UserCreationForm):
    GENDER_CHOICES = [
        ('M', 'Male'),
        ('F', 'Female'),
        ('O', 'Other'),
    ]

    gender = forms.ChoiceField(
        choices=GENDER_CHOICES,
        widget=forms.RadioSelect
    )

    class Meta(UserCreationForm.Meta):
        model = CustomUser
        fields = ('username', 'email', 'password1', 'password2', 'name', 'gender', 'age')


class UserProfileForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput())

    class Meta:
        model = CustomUser
        fields = ['name', 'email', 'password', 'age', 'profile_image']


from django import forms


class DiabetesForm(forms.Form):
    pregnancies = forms.IntegerField(label='Pregnancies',
                                     widget=forms.NumberInput(
                                         attrs={'placeholder': 'Minimum 0 and Maximum 17'}))
    glucose = forms.IntegerField(label='Glucose', widget=forms.NumberInput(
        attrs={'placeholder': 'Minimum 1 and Maximum 199'}))
    blood_pressure = forms.IntegerField(label='Blood Pressure', widget=forms.NumberInput(
        attrs={'placeholder': 'Enter the diastolic blood pressure(Min 1 and Max 122)'}))
    skin_thickness = forms.IntegerField(label='Skin Thickness', widget=forms.NumberInput(
        attrs={'placeholder': 'Enter the triceps skinfold thickness(Min 1 and Max 99)'}))
    insulin = forms.IntegerField(label='Insulin', widget=forms.NumberInput(
        attrs={'placeholder': 'Enter the 2-Hour serum insulin level(Min 1 and Max 846)'}))
    bmi = forms.FloatField(label='BMI', widget=forms.NumberInput(
        attrs={'placeholder': 'Minimum 1 and Maximum 67.1'}))
    diabetes_pedigree = forms.FloatField(label='Diabetes Pedigree', widget=forms.NumberInput(
        attrs={'placeholder': 'Minimum 0.08 and Maximum 2.42'}))
    age = forms.IntegerField(label='Age', widget=forms.NumberInput(
        attrs={'placeholder': 'Minimum 21 and Maximum 81'}))

    def clean_pregnancies(self):
        pregnancies = self.cleaned_data['pregnancies']
        if pregnancies < 0 or pregnancies > 17:
            raise forms.ValidationError("Number of pregnancies is not within the valid range.")
        return pregnancies

    def clean_glucose(self):

        glucose = self.cleaned_data['glucose']
        if glucose < 1 or glucose > 199:
            raise forms.ValidationError("Glucose value is not within the valid range.")
        return glucose

    def clean_blood_pressure(self):
        blood_pressure = self.cleaned_data['blood_pressure']
        if blood_pressure < 1 or blood_pressure > 122:
            raise forms.ValidationError("Blood pressure value is not within the valid range.")
        return blood_pressure

    def clean_skin_thickness(self):
        skin_thickness = self.cleaned_data['skin_thickness']
        if skin_thickness < 1 or skin_thickness > 99:
            raise forms.ValidationError("Skin thickness value is not within the valid range.")
        return skin_thickness

    def clean_insulin(self):
        insulin = self.cleaned_data['insulin']
        if insulin < 1 or insulin > 846:
            raise forms.ValidationError("Insulin value is not within the valid range.")
        return insulin

    def clean_bmi(self):
        bmi = self.cleaned_data['bmi']
        if bmi < 1 or bmi > 67.1:
            raise forms.ValidationError("BMI value is not within the valid range.")
        return bmi

    def clean_diabetes_pedigree(self):
        diabetes_pedigree = self.cleaned_data['diabetes_pedigree']
        if diabetes_pedigree < 0.08 or diabetes_pedigree > 2.42:
            raise forms.ValidationError("Diabetes pedigree value is not within the valid range.")
        return diabetes_pedigree

    def clean_age(self):
        age = self.cleaned_data['age']
        if age < 21 or age > 81:
            raise forms.ValidationError("Age value is not within the valid range.")
        return age
