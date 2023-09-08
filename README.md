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
# Setting Up the Backend

1. Clone the Rails backend repository:

   ```bash
   git clone https://github.com/OakleyJacob/keep-wagging-backend.git
   ```

2. Navigate to the backend directory:

   ```bash
   cd keep-wagging-backend
   ```

3. Install gem dependencies:
  ```bash
   bundle install
  ```
4. Set up the PostgreSQL database and configure the `config/database.yml` file with your database settings.

5. Generate Devise user authentication:

  ```bash
   rails generate devise:install
   rails generate devise User
   rails db:migrate
   ```


Your Rails API is now running at `http://localhost:3000`.
## Database
# Database Creation
To create the database, run the following commands:
```bash
rails db:create
```
# Database Initialization
To initialize the database with seed data (if applicable), run:
```bash
rails db:seed
```
# Start the Rails server:

  ```bash
   rails server
  ```
## Testing
This project uses RSpec for testing.

# Running the Test Suite
To run the test suite, execute the following command:
```bash
bundle exec rspec
```
