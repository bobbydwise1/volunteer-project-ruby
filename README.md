# _Volunteer Tracker, in Ruby, Sinatra and SQL_

#### _A web application that keeps tracks of volunteers for multiple projects._

#### By _Robert Lee_

## Description

_Create a website application that allows the user to keep track of volunteers for multiple projects.  This app uses Ruby, Sinatra Framework, Postgres, and an SQL database.  The integration testing for this app has already been written by the instructor, and the app must pass their specification testing code._

## Setup/Installation Requirements

_Setup requires the installation of Ruby and Postgres.  An additional Ruby "gem" file installs additional dependencies:_

* With an internet connection active, clone this repository by typing at the terminal window:

  "$ git clone https://github.com/bobbydwise1/volunteer-project-ruby.git
* Navigate to the downloaded repository using the terminal window.
* Your computer must have Ruby installed.  In the terminal window at the working directory of the program, you will need to install some additional Ruby Gems files.  Do this by putting this on the command line while connected to the internet:

  "$ bundle install
* Your computer must have Postgres installed.  To restore the SQL database, type the following commands at the terminal window of the project directory:

  "$ createdb volunteers_tracker

  "$ psql volunteers_tracker < my_database.sql

  "$ createdb -T volunteers_tracker volunteers_tracker_test
* Start the Postgres server on your local machine.  Do this by going to a new terminal window at the project directory, and typing:

  "$ postgres
  * The terminal window will need to stay open while Postgres is running.
* If Postgres says it can't find the user, you may have to start Postgres as the default install user:

  "$ postgres -U postgres
* If Postgres is asking for a password, enter "123456".
* To run the test cases, type at the terminal: $ rspec
* To run the program itself, go to the command line, and set the current working directory the same as the project's folder.  Type the following at the terminal:

  "$ ruby app.rb
* Afterwards, open your web browser and head to the address https://localhost:4567 to start the application.

## Technologies Used

_Ruby, Sinatra framework, Bootstrap, Atom, Postgres, SQL , HTML, Git._

## Requirements
* Create an application that tracks projects and the volunteers working on them. Each volunteer will belong to only one project (one project, many volunteers).

The following user stories should be completed:
* As a non-profit employee, I want to view, add, update and delete projects.
* As a non-profit employee, I want to view and add volunteers.
* As a non-profit employee, I want to add volunteers to a project.

* There is a pre-made spec testing and intergation testing code that will check the program.  It is found at:
https://github.com/epicodus-lessons/volunt33r_track3r  

#### Allowable Alterations to the testing code:
* You may alter a unit test only if you are adding more attributes to volunteers or projects.
* You may (and should) add more unit tests if you decide to add additional features or if there are any methods that aren't covered by the included tests..
* You may alter the names of buttons and fields in the Capybara tests. You may also add additional tests. However, your integration specs should otherwise use the current provided tests unaltered.
* If there is an error or bug in any of the tests, you may correct that error.

#### Additional Requirements
* Do not specify a Ruby version in your Gemfile.
* These are the required names of the resources:
  * Production Database: volunteer_tracker
  * Development Database: volunteer_tracker_test
  * Resource names will be projects and volunteers
* A database copy must be made after writing the code.  Do this with Postgres by typing the following at the command line:
    $ pg_dump volunteer_tracker > my_database.sql
* Your README should also include any important instructions for setting up and using your project! You may want to review our lesson on READMEs.

## Specifications

* The required tests for inputs and outputs are denoted in the following ruby spec test files:

./spec/project_spec.rb

./spec/volunteer_spec.rb

./spec/volunteer_integration.rb

* For the most part, the above test code is created by the course instructor, and modifications are generally not allowed.

## Known bugs

* One of the spec tests appears to give a false fail because it is saying that an integer is detected as a string.  However, when you examine the value with binding.pry, the value is an integer.

### License

MIT License

Copyright (c) 2018, _Robert Lee_

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
