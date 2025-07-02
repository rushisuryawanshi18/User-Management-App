# User Management Web Application

This is a mini web application designed to demonstrate how **Servlets**, **JSP**, and **JDBC** can work together in a basic **Java EE (Jakarta EE)** web app.

##  Purpose of the Project

The app provides basic **user registration** and **login** functionality.  
It's designed to help beginners understand how the **frontend (JSP)**, **backend (Servlets)**, and **database (JDBC with MySQL)** are connected in a typical Java web application.

---

## Technologies Used

- Java Servlet (Java EE / Jakarta EE)
- JSP (JavaServer Pages)
- JDBC (Java Database Connectivity)
- MySQL Database
- Apache Tomcat Server
- Eclipse IDE (or any Java IDE)

---

##  Database Setup

1. **Create the MySQL database and table:**

```sql
CREATE DATABASE userdb;

USE userdb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);
