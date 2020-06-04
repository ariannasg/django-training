[![CI Workflow](https://github.com/ariannasg/django-training/workflows/CI%20Workflow/badge.svg)](https://github.com/ariannasg/django-training/actions?query=workflow%3A%22CI+Workflow%22)
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE.md)

# Django Training - Course

* [Description](#description)
* [Objectives](#objectives)
* [Steps taken to setup the project](#steps-taken-to-setup-the-project)
* [Beyond the course activities](#beyond-the-course-activities)
* [License](#license)

## Description
Build a "Wisdom Pet Medicine" web app by following the course https://www.linkedin.com/learning/learning-django-2/rapidly-create-web-applications.

Follow the course to practice creating a brand-new Django project, defining a data model and fields, querying the 
database, and using the framework's built-in URL handlers, views, and templates to structure the rest of the back end. 
Also, practice how to incorporate CSS and JavaScript to enhance the style and usability of the Django templates.

## Objectives
Practicing creating web apps using Django Web Framework.

## Steps taken to setup the project
- Installed python 3: https://www.python.org/downloads/
- Created and activated a virtual environment where we could install django and any other packages needed:
    ```
    python3 -m venv ~/.python-envs/django-training
    source  ~/.python-envs/django-training/bin/activate
    ```
- Configured the IDE Interpreter to use the python3 from the virtual environment
- Inside the virtual env, installed django and checked all dependencies were install correctly:
    ```
    (django-training) ➜ pip install django
    (django-training) ➜ pip freeze
    ```
- Inside the virtual env, created the django project "wisdompets":
    ```
    (django-training) ➜ django-admin startproject wisdompets
    ```
- Inside the virtual env, run project:
    ```
    (django-training) ➜ cd wisdompets
    (django-training) ➜ python3 manage.py runserver
    ```
- Visited URL: http://127.0.0.1:8000/ to make sure the server was up.
- Inside the virtual env, created a django app called adoptions:
    ```
    (django-training) ➜ python3 manage.py startapp adoptions
    ```
- Created the first 2 models: Pet and Vaccine
- Inside the virtual env, created the first migration file for the adoptions app:
   ```
   (django-training) ➜ python3 manage.py makemigrations
   ```
- Checked the migration file was created correctly:
  ```
  python3 manage.py showmigrations
  ```
- Applied all pending migrations and verify it was done successfully:
  ```
  python3 manage.py migrate
  python3 manage.py showmigrations
  ```
- Installed DB Browser for SQLite: https://sqlitebrowser.org/dl/ and checked db
- Inside the virtual env, run the command to load data into the database:
   ```
   (django-training) ➜ python3 manage.py load_data
   ```
- Inside the virtual env, created a super user to access the admin site and run the app:
   ```
   (django-training) ➜ python3 manage.py createsuperuser
   (django-training) ➜ python3 manage.py runserver
   ```
- Checked http://127.0.0.1:8000/admin using the super user credentials
- Created routing for home and pet_detail views 
Checked result at http://127.0.0.1:8000 and http://127.0.0.1:8000/adoptions/1 
- Modified views and templates accordingly

## Beyond the course activities
- Saved the env packages in a requirements.txt file
   ```
   (django-training) ➜  django-training git:(master) ✗ pip freeze > requirements.txt 
   ```
- Installed safety and pylint for running security checks and linting
- Created a config file for pylint and added some extra setup
- Created a makefile with the basic commands to run locally and during CI/CD
- Configured a CI workflow for using github-actions
- Installed the coverage package, created a config file for it and and added commands to the makefile for generating test coverage

## License
This project is licensed under the terms of the MIT License.
Please see [LICENSE](LICENSE.md) for details.
