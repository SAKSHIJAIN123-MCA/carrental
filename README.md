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
    http://localhost/carrental/
## 📸 Screenshots

### 🏠 Home Page
![Home Page](https://github.com/SAKSHIJAIN123-MCA/carrental/blob/main/assets/images/Home%20page.png?raw=true)

### 🆕 Recently Listed Cars
![Recently Listed Cars](https://github.com/SAKSHIJAIN123-MCA/carrental/blob/main/assets/images/Recently%20listed%20cars.png?raw=true)

### 🚘 Car Listing Page
![Car Listing](https://github.com/SAKSHIJAIN123-MCA/carrental/blob/main/assets/images/CAR%20LISTING.png?raw=true)

### Contributing
    Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

### Contact
    For any questions or suggestions, please contact sakshijainmorena@gmail.com.


    









   

