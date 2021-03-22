# Product-Search

## Installation
 - Clone this repo by running git clone https://github.com/Gidraf/Product-Search.git
 - cd to product-search directory
 - create a virtual envirionment
 - run `python install -r requirements.txt to install dependencies`
 - run `python manage.py migrate` to update migrations
 - run `python manage.py rnserver 0.0.0.0:8000` to runserver

 # Usage
 - Access your ip address e.g. 192.168.1.1:8000 to access homepage
 - access ip address/admin to see admin page
 - username on admin page is `test`
 - pasword on admin page is `testpassword`

 # Demo
 [Product Search](http://172.105.67.5/)

 [Admin](http://172.105.67.5/admin)


 # Requirements

- Make sure postgresql is installed
- Make sre python is install


# Documentation

I used MVC patter to build this search application. The application consist of models, views and controllers.

## Architecture

### Patter
 - MVC - Model, View, Controller

### a. Model
- Models persist and store our data

### b. View
- User facing elements of our application

### c. Controls
 - Handles business loginc and connect models and views



