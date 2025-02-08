# Store Rating Web Application

## Overview
This is a **Ruby on Rails** web application that allows users to rate stores based on their experience. Users can sign up, log in, and submit ratings, while admins can manage users and reviews. The project utilizes **Devise for authentication**, along with **Bootstrap** for styling.

## Features
- **User Authentication:** Users can register, log in, and manage their profiles.
- **Role-Based Access:** Users and admins have different permissions.
- **Store Ratings:** Users can rate stores with a score.
- **Admin Panel:** Admins can promote users to admin and delete accounts.
- **Bootstrap UI:** Styled using Bootstrap for a clean and responsive design.

## Tech Stack
- **Backend:** Ruby on Rails
- **Database:** SQLite (Development)
- **Authentication:** Devise
- **Frontend:** ERB, Bootstrap

## Installation
1. **Clone the repository:**
   ```sh
   git clone https://github.com/abhishek-rathod1/store_rating_app.git
   cd store_rating_app
   ```
2. **Install dependencies:**
   ```sh
   bundle install
   ```
3. **Set up the database:**
   ```sh
   rails db:create db:migrate db:seed
   ```
4. **Run the Rails server:**
   ```sh
   rails server
   ```
5. **Visit the app in your browser:**
   ```
   http://localhost:3000
   ```

## Usage
- **Sign up or log in** to rate stores.
- **Admins** can promote users and manage ratings.
- **Users** can submit and edit ratings.

## Contributing
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit changes (`git commit -m 'Add feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a Pull Request.

## License
This project is open-source and available under the **MIT License**.

## Contact
For any inquiries, reach out to abhir4702@gmail.com , https://github.com/abhishek-rathod1

