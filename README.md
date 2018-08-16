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
When the installation is complete, you will configure the CORS so that the application receives call from other domains. To do that you need to uncomment the line **gem  ‘rack-cors’**  inside the file **'Gemfile'**.
>More specifically you need to uncomment the line 26 

Now you will run the following command:

    $bundle install
>In the root folder where the Gemfile is found.

After you runned the command above you need to open the file cors.rb in the folder config > initializers. You will uncomment the code there and change the line 10 to:
origins '*'

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

> Versions 9.1 and up are supported. 

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