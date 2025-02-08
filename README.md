# Store Rating App

## Overview
The **Store Rating App** is a web application built using Ruby on Rails that allows users to rate and review stores. The app provides different functionalities based on user roles, including standard users and administrators.

## Features
- **User Authentication** (Sign Up, Login, Logout)
- **Store Ratings & Reviews**
- **Admin Dashboard** for managing stores and users
- **Role-based Access Control**
- **Responsive UI** using Bootstrap

## Installation

### Prerequisites
Ensure you have the following installed:
- Ruby (>= 3.0)
- Rails (>= 7.0)
- PostgreSQL (or SQLite for local development)

### Setup
```sh
# Clone the repository
git clone https://github.com/abhishek-rathod1/store_rating_app.git
cd store_rating_app

# Install dependencies
bundle install

# Set up the database
rails db:create
rails db:migrate
rails db:seed

# Start the server
rails server
```

## Usage

### Accessing the Application
- Visit `http://localhost:3000/` to access the homepage.
- Users can sign up or log in to rate stores.

### Admin Credentials
To log in as an admin, use the following credentials:
- **Email:** `admin@admin.com`
- **Password:** `admin@123`

The admin has access to `/admin/dashboard` to manage users and store ratings.

## Contributing
If you'd like to contribute:
1. Fork the repository.
2. Create a new branch: `git checkout -b feature-name`
3. Commit your changes: `git commit -m 'Add feature'`
4. Push to the branch: `git push origin feature-name`
5. Submit a pull request.

## License
This project is licensed under the MIT License.

## Contact
For any queries or support, reach out via GitHub issues or email at `abhir4702@gmail.com`.

