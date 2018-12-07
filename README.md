# _Volunteer Tracker, in Ruby, Sinatra and SQL_

#### _A web application that keeps tracks of volunteers for multiple projects._

#### By _Robert Lee_

## Description

_Create a website application that allows the user to keep track of volunteers for multiple projects.  This app uses Ruby, Sinatra Framework, Postgres, and an SQL database.  The integration testing for this app has already been written by somebody else, and the app must pass their testing code._

## Setup/Installation Requirements

* Clone this repository using `git clone https://github.com/bobbydwise1/anagrams_antigrams.git`
* Navigate to the downloaded repository using a terminal window.
* Your computer must have Ruby installed.  In the terminal window at the working directory of the program, you will need to install some addtional Ruby Gems files.  Do this by putting this on the command line while connected to the internet:
  "$ bundle install
* To run the test cases, type at the terminal: $ rspec
* To run the program itself, go to the command line, and set the current working directory the same as the project's folder.
* Type $ ruby app.rb at the terminal
* Open your web browser and head to https://localhost:4567 to start the application.

## Technologies Used

_Ruby, Sinatra framework, Atom, Postgres, SQL , HTML, Git._

## Behaviors

###Allowable Alterations to the testing code:
* You may alter a unit tet only if you are adding more attributes to volunteers or projects.
* You may (and should) add more unit tests if you decide to add additional features or if there are any methods that aren't covered by the included tests..
* You may alter the names of buttons and fields in the Capybara tests. You may also add additional tests. However, your integration specs should otherwise use the current provided tests unaltered.
* If there is an error or bug in any of the tests, you may correct that error.

###Requirements
* Create an application that tracks projects and the volunteers working on them. Each volunteer will belong to only one project (one project, many volunteers).

The following user stories should be completed:
* As a non-profit employee, I want to view, add, update and delete projects.
* As a non-profit employee, I want to view and add volunteers.
* As a non-profit employee, I want to add volunteers to a project.

###Additional Requirements
* Please do not specify a Ruby version in your Gemfile. It makes it more difficult to review projects.
* For this code review, please use the following names for your databases:
  * Production Database: volunteer_tracker
  * Development Database: volunteer_tracker_test
  * Resource names will be projects and volunteers
* _When you are ready to submit your project, you must run the following bash command while you are in the root directory of your project:_

$ pg_dump volunteer_tracker > my_database.sql

* This will create a database dump called my_database.sql in your project's root directory. volunteer_tracker is the name of the database being dumped. Before you submit, confirm that the root directory of your repository contains my_database.sql. We will not review your code if this isn't properly set up.
* Your README should also include any important instructions for setting up and using your project! You may want to review our lesson on READMEs.

## Specifications

* Please enter text here.

* Please describe something here.
  * Input:  Please type something here.
  * Output:  Please type something herer

* Please describe something here.
  * Input:  Please type something here.
  * Output:  Please type something here.

## Known bugs

* If there are any bugs, type them here.
* If there are any bugs, type them here.

### License

MIT License

Copyright (c) 2018, _Robert Lee_

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
