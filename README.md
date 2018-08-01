# D2Man Ruby on Rails app

D2Man (*Daily Development report Manager*) is a Ruby on Rails 5 app for managing development tasks of IT projects.

## Requirements

The app is developed with Ruby 2.5.1 and Rails 5.2.0. In Linux distros, Ruby can be managed via the [Ruby Version Manager (RVM)](http://rvm.io/).

## Getting started

After cloning this git repo, install the required gems:
```
bundle install
```
Then migrate the database:
```
rails db:migrate
```
Optional: populate the database:
```
rails db:seed
```
If the app passes the tests, run it in local server:
```
rails server
```
The app can be accessed from [0.0.0.0:3000](http://0.0.0.0:3000/). The administration panel of the ActiveAdmin can be accessed from [0.0.0.0:3000/admin](http://0.0.0.0:3000/admin/).

## Usage

The initial page is the login page with a link to registration (Sign up). A normal user page has view reports, edit profile and logout links on the navigation tab and the form to insert reports at the center of the page. A admin user has the edit profile and logout links on the navigation tab and the table with subordinate users and reports. A admin can be admin for multiple teams and a normal user can be in multiple teams.

## Troubleshooting

If the bootsnap gem cannot be loaded, it must be installed manually with `gem install bootsnap` and then `bundle update`.

## Libraries

The following libraries are used in this system:
* Puma app server;
* Bootstrap framework for styles;
* Will_paginate for table pagination
* ActiveAdmin for user administration;
* Devise for authentication and authorization;
* Simple form for customizing forms;
* SQLite for database.

## TODO

* Apply HAML;

## Acknowledges
* Ruby on Rails Tutorial (Rails 5) by Michael Hartl (this app is based on the book);
* W3Schools tutorials;
* Stackowverflow members;
* Gems documentations;
