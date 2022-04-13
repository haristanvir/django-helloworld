=================
django-helloworld
=================

A Django '`Hello World` example with autoinstrumentation

Installation
============

You need install the pre-requirements for run this Hello World example.

Update repositories of available packages to install, with
the following command:

::

  $ sudo apt update

Install necessary minimum dependencies, with the following command:

::

  $ sudo apt install python3-dev python3-pip python3-virtualenv

For run this example need to install Django
framework execute the follow command:

::

    $ sudo pip install -r requirements.txt
    $ opentelemetry-bootstrap --action=install

Run application
===============

After which you can run::

    $ opentelemetry-instrument python manage.py runserver --noreload

Then, you can open the URL http://127.0.0.1:8000/ in your web browser and you can 
see the hello world example like this:

.. figure:: https://github.com/django-ve/django-helloworld/raw/master/docs/django_helloword.png
   :width: 315px
   :align: center
   :alt: A Django 'Hello World' program example

   A Django 'Hello World' program example

Also you can open in your web browser the URL http://127.0.0.1:8000/admin for access to 
the *Django Admin Interface* like this:

.. figure:: https://github.com/django-ve/django-helloworld/raw/master/docs/django_admin_interface_running.png
   :width: 315px
   :align: center
   :alt: Django Admin Interface running

   Django Admin Interface running
