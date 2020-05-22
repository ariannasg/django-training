[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE.md)

# Django Training - Course

* [Description](#description)
* [Objectives](#objectives)
* [Steps taken to setup the project](#steps-taken-to-setup-the-project)
* [License](#license)

## Description
Build a "Wisdom Pet Medicine" web app by following the course https://www.linkedin.com/learning/learning-django-2/rapidly-create-web-applications.

Follow the course to practice creating a brand-new Django project, defining a data model and fields, querying the 
database, and using the framework's built-in URL handlers, views, and templates to structure the rest of the back end. 
Also, practice how to incorporate CSS and JavaScript to enhance the style and usability of the Django templates.

## Objectives
Practicing creating web apps using Django Web Framework (version 3.0.3).

## Steps taken to setup the project
- Installed python 3: https://www.python.org/downloads/
- Created and activated a virtual environment where we could install django and any other packages needed:
    ```
    python3 -m venv env
    source env/bin/activate
    ```
- Configured the IDE Interpreter to use the python3 from the virtual environment
- Inside the virtual env, installed django and checked all dependencies were install correctly:
    ```
    (env) ➜ pip install django==3.0.3
    (env) ➜ pip freeze
    ```
- Inside the virtual env, created the django project "wisdompets":
    ```
    (env) ➜ django-admin startproject wisdompets
    ```
- Inside the virtual env, run project:
    ```
    (env) ➜ cd wisdompets
    (env) ➜ python3 manage.py runserver
    ```
- Visited URL: http://127.0.0.1:8000/ to make sure the server was up.
- Inside the virtual env, created a django app called adoptions:
    ```
    (env) ➜ python3 manage.py startapp adoptions
    ```
- Created the first 2 models: Pet and Vaccine
- Inside the virtual env, created the first migration file for the adoptions app:
   ```
   (env) ➜ python3 manage.py makemigrations
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
   (env) ➜ python3 manage.py load_data
   ```
- Inside the virtual env, created a super user to access the admin site and run the app:
   ```
   (env) ➜ python3 manage.py createsuperuser
   (env) ➜ python3 manage.py runserver
   ```
- Checked http://127.0.0.1:8000/admin using the super user credentials
- Created routing for home and pet_detail views 
Checked result at http://127.0.0.1:8000 and http://127.0.0.1:8000/adoptions/1 
- Modified views and templates accordingly
  
## License
This project is licensed under the terms of the MIT License.
Please see [LICENSE](LICENSE.md) for details.
