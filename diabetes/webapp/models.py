from django.contrib.auth.models import AbstractUser
from django.db import models
from django.conf import settings
from sklearn.metrics import accuracy_score


class CustomUser(AbstractUser):
    GENDER_CHOICES = [
        ('M', 'Male'),
        ('F', 'Female'),
        ('O', 'Other'),
    ]

    name = models.CharField(max_length=150)
    email = models.EmailField(unique=True)
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES)
    age = models.PositiveIntegerField(null=True)
    password = models.CharField(max_length=128)
    profile_image = models.ImageField(upload_to='profile_images', blank=True, null=True)

    # Add any additional fields or methods as needed

    def __str__(self):
        return self.username
        # Add class meta

    class Meta:
        verbose_name = "User Detail"
        verbose_name_plural = "User Details"


 # with scikit learn library -> accuracy - 0.7467532467532467

import os
import csv
import numpy as np
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from django.db import models


class DiabetesData(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    pregnancies = models.IntegerField()
    glucose = models.FloatField()
    blood_pressure = models.FloatField()
    skin_thickness = models.FloatField()
    insulin = models.FloatField()
    bmi = models.FloatField()
    diabetes_pedigree = models.FloatField()
    age = models.IntegerField()
    outcome = models.CharField(max_length=10)

    def __str__(self):
        return f"DiabetesData - ID: {self.id}, User: {self.user.username}"



    @staticmethod
    def train_logistic_regression():
        dataset_path = os.path.join(os.path.dirname(__file__), 'data', 'diabetes.csv')

        with open(dataset_path, 'r') as file:
            reader = csv.reader(file)
            next(reader)  # Skip the header row

            data = []
            for row in reader:
                data.append([
                    int(row[0]),
                    float(row[1]),
                    float(row[2]),
                    float(row[3]),
                    float(row[4]),
                    float(row[5]),
                    float(row[6]),
                    int(row[7]),
                    int(row[8])
                ])

        data = np.array(data)

        X = data[:, :-1]
        y = data[:, -1]

        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

        model = LogisticRegression()
        model.fit(X_train, y_train)

        accuracy = model.score(X_test, y_test)
        print("Model accuracy:", accuracy)

        return model

    class Meta:
         verbose_name = "Diabetes Record"
         verbose_name_plural = "Diabetes Records"


   
