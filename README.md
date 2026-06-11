Employee Management System (EMS)
A comprehensive, web-based software solution designed to streamline workforce management operations. The system features deep administrative capabilities for managing employee records, tracking daily attendance statistics, generating analytical data, and handling secure multi-tier authentication.

🚀 Key Features
Secure Authentication & Authorization

Dynamic login and registration interfaces.

Real-time frontend password strength indicator based on complexity criteria (length, casing, digits, special characters).

Role-based access controls (Administrator, Manager, HR Staff, Employee).

Comprehensive Employee Directory (CRUD)

Full lifecycle management of personnel records including personal data, corporate details, salary mappings, and profile images.

Asynchronous validations to prevent structural collisions.

Advanced Querying & Filtration Engine

Live keyword matching capabilities targeting names, positions, departments, and emails.

Dedicated advanced multi-tier search panel utilizing specialized parameter dropdowns.

Dynamic Analytics Dashboard

Real-time reporting metrics tracking Total Employees, Present Today, On Leave, and New Hires This Month.

Recent corporate activity feeds paired with streamlined Quick Action gateways.

🏗️ System Architecture
The application adheres strictly to a decoupled 3-Tier Architecture ensuring high scalability, data isolation, and clear separation of concerns:

┌────────────────────────────────────────────────────────┐
│                   Presentation Layer                   │
│         (HTML5, CSS3, JavaScript ES6+, JSP)           │
└───────────────────────────┬────────────────────────────┘
                            │ (HTTP / AJAX)
┌───────────────────────────▼────────────────────────────┐
│                     Business Layer                     │
│              (Java Servlets, Business Logic)           │
└───────────────────────────┬────────────────────────────┘
                            │ (JDBC / Data Mapping)
┌───────────────────────────▼────────────────────────────┐
│                       Data Layer                       │
│                   (MySQL Database)                     │
└────────────────────────────────────────────────────────┘
🛠️ Tech Stack
Frontend
Core: HTML5, CSS3, JavaScript (ES6+)

Asynchronous Comm: AJAX (Fetch API / XMLHttpRequest)

Theming & Layout: Custom CSS Variables & Animations, Font Awesome v6.0 Icons

Backend
Runtime Environments: Java (Servlets, JSP), Apache Tomcat Server

Project Lifecycle Management: Apache Maven (.mvn)

Object-Relational Mapping (ORM) / Persistence: Hibernate ORM Framework & Native DAO Design Patterns

Database
Engine: MySQL

Character Sets: utf8mb4_0900_ai_ci

📂 Repository Structure
The internal structure reflects standard clean-coding architecture conventions:

Plaintext
├── .mvn/                     # Maven wrapper configuration 
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── org.Employe_System/
│   │   │       ├── DAo/      # Data Access Objects (EmployeeDAo, UserDao)
│   │   │       ├── model/    # Plain Old Java Objects / Entities (Employee, User)
│   │   │       └── util/     # Utility Helpers & Factories (DBConnection)
│   │   └── webapp/           # Presentation Contexts (JSP pages, CSS, JS validations)
🗄️ Database Schema Blueprint
SQL
CREATE TABLE `employees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `dob` DATE DEFAULT NULL,
  `gender` VARCHAR(20) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `phone` VARCHAR(30) DEFAULT NULL,
  `alt_phone` VARCHAR(30) DEFAULT NULL,
  `address` TEXT DEFAULT NULL,
  `employee_id` VARCHAR(50) DEFAULT NULL,
  `department` VARCHAR(100) DEFAULT NULL,
  `position` VARCHAR(100) DEFAULT NULL,
  `join_date` DATE DEFAULT NULL,
  `salary` DECIMAL(12,2) DEFAULT NULL,
  `employment_type` VARCHAR(50) DEFAULT NULL,
  `photo_path` VARCHAR(255) DEFAULT NULL,
  `status` VARCHAR(20) DEFAULT 'active',
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
🚀 Local Installation & Setup
Clone the Repository:

Bash
git clone https://github.com/your-username/Employee_System.git
cd Employee_System

2.  **Database Provisioning:**
    *   Open your local MySQL instance.
    *   Create a schema named `employee_database` (or matches your file preference).
    *   Run the schema definitions provided above.

3.  **Configure Environment Drivers:**
    *   Navigate to `src/main/java/org/Employe_System/util/DBConnection.java`.
    *   Update your target connection URL, database username, and matching password strings.

4.  **Compilation & Build Execution:**
    ```bash
    mvn clean package
Deployment:

Move the generated .war artifact into your Apache Tomcat installation's webapps/ folder.

Boot up your Apache Tomcat server instance.

Access the web app via browser at: http://localhost:8080/Employee_System/

✍️ Author & Project Context
Developer: D.A. Wickramasooriya

Course Assignment: Web Programming II

Instructor / TA: Mr. Anjana Samarakoon

Affiliated Batch: Athina Uni
