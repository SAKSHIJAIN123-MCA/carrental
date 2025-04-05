# 🚗 Car Rental Management System

A full-stack Car Rental web application built using **HTML, CSS, JavaScript (Frontend)** and **PHP with MySQL (Backend)**. This system allows users to book cars and admins to manage car rentals efficiently.

---

## 🔧 Features

### 🧑‍💻 User Features:
- View available cars with details (image, model, price, etc.)
- Book a car by filling a rental form
- View booking confirmation and details

### 🛠️ Admin Features:
- Add, update, and delete car listings
- View and manage all bookings
- Manage users and reports

---

## 🧰 Technologies Used

| Layer       | Technology       |
|-------------|------------------|
| Frontend    | HTML, CSS, JavaScript |
| Backend     | PHP              |
| Database    | MySQL            |

---

## 💾 Database Structure

- **Users Table** – Stores user info (name, email, etc.)
- **Cars Table** – Stores car details (brand, model, rent, etc.)
- **Bookings Table** – Stores booking info (user_id, car_id, dates)

## 🚀 How to Run the Project

1. **Clone the repository:**
   ```bash
   git clone https://github.com/SAKSHIJAIN123-MCA/carrental.git

2. **Move the project to your web server root:**
   - For XAMPP: Place inside `htdocs/`
   - For WAMP: Place inside `www/`

3. **Start Apache and MySQL** using XAMPP/WAMP.

4. **Import the database:**
   - Open `phpMyAdmin`
   - Create a new database (e.g., `carrental`)
   - Import the provided `.sql` file into the database

5. **Update database config in the project:**
   ```php
   $conn = new mysqli("localhost:3307", "root", "", "carrental");
   
6. **Open the project in browser:**
    http://localhost/car-rental/
### Screenshots
    ![Home Page](https://github.com/user-attachments/assets/bfab94ae-612b-4665-a830-49fe0b62065c)
    ![CAR LISTING](https://github.com/user-attachments/assets/69113e58-b2a3-4817-98e1-640001172c98)
    ![Recently listed cars](https://github.com/user-attachments/assets/cf0b591d-4179-4f78-841f-eaf44a017749)

### Contributing
    Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

### Contact
    For any questions or suggestions, please contact sakshijainmorena@gmail.com.


    









   

