# Food-order-Application
Zomato-like App A full-stack web application simulating a food delivery platform, where users can browse menu items, add them to a cart, and place orders with delivery addresses.

Features Menu Browsing: View dishes available for order with details like name and price. Cart Management: Add, update, or remove items from the cart, and see the total price. Order Placement: Users can provide a delivery address and place orders. MySQL Database: Stores user orders, items, customer data, and payment information. Admin Functionality: Basic mock payment system to simulate transactions. Technologies Frontend: HTML, CSS, JavaScript Backend: Flask (Python) Database: MySQL Tools: VS Code, Postman, MySQL Workbench Setup Instructions Prerequisites Make sure you have the following installed:

Python 3.x MySQL server Flask MySQL Connector for Python (pip install mysql-connector-python) Steps Clone this repository to your local machine:


bash Copy code pip install -r requirements.txt Set up the MySQL database:

Create the database and tables using the provided SQL scripts in database.sql. Modify the database connection details in app.py as needed. Run the Flask server:

bash Copy code python app.py Open the application in your browser at http://127.0.0.1:5000.

Usage Browse the available dishes and add them to your cart. Provide a delivery address and place an order. The order details are stored in the MySQL database for processing. Screenshots
