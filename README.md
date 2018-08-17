# Challenge Backend

First of all you need to clone this repository to any folder you want.

## Ruby

Install the last stable version of Ruby

- OS X:

Using homebrew, run the command:

        $brew install ruby

- Linux (Ubuntu):

        $sudo apt-get install ruby-full

- Linux (Fedora):

        $sudo yum install ruby

- Windows:

Download in https://rubyinstaller.org/downloads/

## Rails

To install rails is just as simple as install ruby. Run the following code:

        $gem install rails

## After Install Ruby on Rails

Now you will run the following command:

        $bundle install

>**In the root folder where the Gemfile is found.**

## Installing PostgreSQL

The database I use in the project is PostgreSQL, so you **need to install it to make it work**.

- OS X:

Using homebrew, run the command:

        $brew install postgresql

- Linux (Ubuntu):

        $sudo apt-get install postgresql

- Linux (Fedora):

        $sudo dnf install postgresql-server

- Windows:

Download in http://www.postgresqltutorial.com/install-postgresql/

> **Versions 9.1 and up are supported.**

## Start PostgreSQL

- OS X:

Using homebrew, run the command:

        $brew services start postgresql

- Windows:

        $net start postgresql-VERSION_HERE

>Linux run it automatically

## Configuring User Database

First you need to **configure a new role user to your database**. More specifically the username and the password i used.

>Username: tuliostarling

>Password: 12345

To do that you need to run psql in your terminal.

        $psql postgres
> **Or** you execute the .exe given by postgresql 'SQL Shell (psql)'

And then run the command:

        $CREATE USER tuliostarling WITH PASSWORD '12345';


## Initializing Database

Now you need to run the following command:

        $rake db:setup

The command above will run db:create, db:schema:load and db:seed.

In other words it will create the database and the tables, and then it will populate the database.

  

## Run Server

Finally you can run the server with the next code:

        $rails s

Open your browser on the URL localhost:3000.