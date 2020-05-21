[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE.md)

# Django Training

* [Description](#description)
* [Objectives](#objectives)
* [Steps taken to setup the project](#steps-taken-to-setup-the-project)
* [License](#license)

## Description
https://www.linkedin.com/learning/learning-django-2/rapidly-create-web-applications

Follow the course to practice creating a brand-new Django project, defining a data model and fields, querying the 
database, and using the framework's built-in URL handlers, views, and templates to structure the rest of the back end. 
Also, practice how to incorporate CSS and JavaScript to enhance the style and usability of the Django templates.

## Objectives
Practicing Django Web Framework (version 3).

## Steps taken to setup the project
- Installed python 3: https://www.python.org/downloads/.
- Configured the IDE Interpreter to use python 3 and setup the run configuration: 
https://www.jetbrains.com/help/pycharm/creating-and-editing-run-debug-configurations.html?keymap=secondary_macos.
- Created and activated a virtual environment where we could install django and any other packages needed:
    ```
    python3 -m venv env
    source env/bin/activate
    ```
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

## License
This project is licensed under the terms of the MIT License.
Please see [LICENSE](LICENSE.md) for details.
