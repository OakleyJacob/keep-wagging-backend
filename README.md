## Summary of app

This Keep-Wagging backend serves as the foundation for our web application. It enables user authentication, allowing users to create accounts and log in securely. Once logged in, users have full CRUD (Create, Read, Update, Delete) functionality to interact with our site's resources. This backend is designed to provide a seamless and secure experience for our users as they navigate and interact with our web application.

## Ruby Version
This project uses Ruby version 3.2.0. It's recommended to use a version manager like RVM or rbenv to manage your Ruby environment.

## System Dependencies
The following system dependencies are required to run the project:

PostgreSQL
Devise
Ruby on Rails
Rspec
This is merely a back-end API, so postman or a front-end is also required.

## Database
# Database Creation
To create the database, run the following commands:

rails db:create
rails db:migrate
# Database Initialization
To initialize the database with seed data (if applicable), run:

rails db:seed
## Testing
This project uses RSpec for testing.

# Running the Test Suite
To run the test suite, execute the following command:

bundle exec rspec
