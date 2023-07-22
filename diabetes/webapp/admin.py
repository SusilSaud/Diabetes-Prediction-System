from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import Group
from django.utils.html import format_html

from .models import CustomUser


class CustomUserAdmin(UserAdmin):
    ordering = ('-id',)
    readonly_fields = ('email', 'password')
    # list_display = ['username', 'name', 'email', 'age', 'gender', 'is_superuser']
    list_display = ['username', 'name', 'email', 'age', 'gender', 'profile_image_display', 'is_superuser']

    def profile_image_display(self, obj):
        if obj.profile_image:
            return format_html('<img src="{}" width="50" height="50" />', obj.profile_image.url)
        else:
            return None

    profile_image_display.short_description = 'Profile Image'

    list_filter = ['name', 'id', 'username']
    fieldsets = (
        (None, {'fields': ('username', 'email', 'password')}),
        ('Personal Info', {'fields': ('name', 'age', 'gender')}),
        ('Permissions', {'fields': ('is_active', 'is_staff', 'is_superuser')}),
        ('Important Dates', {'fields': ('last_login', 'date_joined')}),
        ('Profile', {'fields': ('profile_image',)}),  # Add the profile_image field
    )



admin.site.register(CustomUser, CustomUserAdmin)



# unregister group from admin panel
admin.site.unregister(Group)

from django.contrib import admin
from .models import DiabetesData


class DiabetesFormDataAdmin(admin.ModelAdmin):
    list_display = (
    'user', 'pregnancies', 'glucose', 'blood_pressure', 'skin_thickness', 'insulin', 'bmi', 'diabetes_pedigree', 'age',
    'outcome')


admin.site.register(DiabetesData, DiabetesFormDataAdmin)
