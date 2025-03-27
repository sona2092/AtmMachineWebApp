# 🏦 ATM Banking System

## ✨ Overview
ATM Banking System is a web-based application that provides banking functionalities such as account management, user authentication, and transactions. It is developed using **Java Servlets, JSP, and MySQL**, ensuring a secure and efficient banking experience.

## 🔧 Features
- ✅ **User authentication and session management**
- 💳 **Account balance inquiry**
- 💰 **Fund transfers between accounts**
- ⚙ **Change PIN functionality**
- 🌟 **User-friendly web interface**

## 🛠️ Technologies Used
### 💻 Backend
- Java Servlets
- JSP (JavaServer Pages)
- JDBC for database interaction

### 🌐 Frontend
- HTML, CSS, JavaScript

### 📊 Database
- MySQL

## ✅ Setup Instructions
### 1. 💾 Clone the Repository
```bash
git clone https://github.com/yourusername/ATM-Banking-System.git
cd ATM-Banking-System
```

### 2. 🏢 Configure Database (MySQL)
1. Create a MySQL database:
   ```sql
   CREATE DATABASE atm_banking;
   ```
2. Import the SQL schema (if provided):
   ```sql
   SOURCE path/to/database.sql;
   ```
3. Update database credentials in `db.properties`:
   ```properties
   db.url=jdbc:mysql://localhost:3306/atm_banking
   db.user=root
   db.password=yourpassword
   ```

### 3. 📚 Setup in Eclipse
1. Open **Eclipse IDE**.
2. Import the project: `File > Import > Existing Maven Projects`.
3. Add **Apache Tomcat Server** and deploy the project.

### 4. ⚡ Run the Application
1. Start MySQL server.
2. Run the application on Apache Tomcat.
3. Open the browser and navigate to:
   ```
   http://localhost:8080/ATM-Banking-System/
   ```
   
## Screenshots
![image](https://github.com/user-attachments/assets/66b13164-695a-46aa-bfbb-28429b6c8ac0)
![image](https://github.com/user-attachments/assets/61b62d58-207e-431a-90ca-79c0ef637724)
![image](https://github.com/user-attachments/assets/42868cf2-8020-45e3-a013-f4d49579c3ef)
![image](https://github.com/user-attachments/assets/ba03c34c-d92f-4373-b600-5a17b4f44595)
![image](https://github.com/user-attachments/assets/c06301a6-800e-4458-8917-a74617e64c91)


## 📚 Future Enhancements
- ♻️ Implement **transaction history tracking**
- 🛡️ Add **multi-factor authentication** for security
- 📱 Mobile-friendly **UI improvements**

## 🌟 Acknowledgements
- 📃 **MySQL** for database management
- 🛠️ **Apache Tomcat** for server deployment
- 📚 **Eclipse IDE** for development
