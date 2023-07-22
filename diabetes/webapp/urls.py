from webapp import views
from django.urls import path
from .views import register_view

urlpatterns = [
    path('', views.index, name='index'),
    path('home/', views.home, name='home'),
    path('register/', views.register_view, name='register'),
    path('login/', views.loginUser, name='login'),
    path('logout/', views.logoutUser, name='logout'),
    path('update/', views.update_profile, name='update'),
    path('predict_diabetes/', views.predict_diabetes, name='predict_diabetes'),
    path('diabetes_records/', views.diabetes_records, name='diabetes_records'),
    path('download_records/', views.download_diabetes_records, name='download_records'),
    path('dashboard/', views.dashboard, name='dashboard'),

]
