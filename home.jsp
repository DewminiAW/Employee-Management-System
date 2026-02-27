<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Employee Management</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar">
        <a href="home.jsp" class="navbar-brand">
            <i class="fas fa-building"></i> EMS
        </a>
        <div class="navbar-nav">
            <a href="home.jsp" class="nav-link active">
                <i class="fas fa-home"></i> Home
            </a>
            <a href="employee/view_employees.jsp" class="nav-link">
                <i class="fas fa-users"></i> Employees
            </a>
            <a href="employee/dashboard.jsp" class="nav-link">
                <i class="fas fa-chart-bar"></i> Dashboard
            </a>
            <a href="employee/search_results.jsp" class="nav-link">
                <i class="fas fa-search"></i> Search
            </a>
            <div class="nav-link" style="display: flex; align-items: center; gap: 1rem;">
                <i class="fas fa-user-circle"></i>
                <span>${sessionScope.username}</span>
                <a href="../logout" class="btn btn-danger" style="padding: 0.3rem 1rem;">
                    <i class="fas fa-sign-out-alt"></i>
                </a>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <!-- Welcome Banner -->
        <div class="card" style="background: linear-gradient(135deg, #667eea, #764ba2); color: white;">
            <div style="display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <h1 style="color: white; font-size: 2.5rem;">Welcome, ${sessionScope.username}!</h1>
                    <p style="opacity: 0.9;"<%= new java.util.Date() %></p>
                </div>
                <i class="fas fa-user-circle" style="font-size: 5rem; opacity: 0.5;"></i>
            </div>
        </div>

        <!-- Quick Stats -->
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1.5rem; margin: 2rem 0;">
            <div class="card" style="text-align: center; border-left: 4px solid #4CAF50;">
                <i class="fas fa-users" style="font-size: 2rem; color: #4CAF50;"></i>
                <h3 style="margin: 0.5rem 0;">Total Employees</h3>
                <p style="font-size: 2rem; font-weight: bold; color: #4CAF50;">156</p>
            </div>
            
            <div class="card" style="text-align: center; border-left: 4px solid #FF9800;">
                <i class="fas fa-clock" style="font-size: 2rem; color: #FF9800;"></i>
                <h3 style="margin: 0.5rem 0;">On Leave</h3>
                <p style="font-size: 2rem; font-weight: bold; color: #FF9800;">8</p>
            </div>
            
            <div class="card" style="text-align: center; border-left: 4px solid #2196F3;">
                <i class="fas fa-user-plus" style="font-size: 2rem; color: #2196F3;"></i>
                <h3 style="margin: 0.5rem 0;">New This Month</h3>
                <p style="font-size: 2rem; font-weight: bold; color: #2196F3;">12</p>
            </div>
        </div>

        <!-- Quick Actions Grid -->
        <h2 style="margin: 2rem 0 1rem;"><i class="fas fa-bolt"></i> Quick Actions</h2>
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 1.5rem;">
            <a href="employee/create_employee.jsp" class="card" style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 1rem; transition: transform 0.3s;">
                <div style="background: #4CAF50; color: white; width: 50px; height: 50px; border-radius: 50%; display: flex; align-items: center; justify-content: center;">
                    <i class="fas fa-user-plus"></i>
                </div>
                <div>
                    <h3>Add New Employee</h3>
                    <p style="color: #666;">Register a new employee to the system</p>
                </div>
            </a>

            <a href="employee/view_employees.jsp" class="card" style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 1rem;">
                <div style="background: #2196F3; color: white; width: 50px; height: 50px; border-radius: 50%; display: flex; align-items: center; justify-content: center;">
                    <i class="fas fa-list"></i>
                </div>
                <div>
                    <h3>View All Employees</h3>
                    <p style="color: #666;">Browse and manage employee records</p>
                </div>
            </a>

            <a href="employee/search_results.jsp" class="card" style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 1rem;">
                <div style="background: #FF9800; color: white; width: 50px; height: 50px; border-radius: 50%; display: flex; align-items: center; justify-content: center;">
                    <i class="fas fa-search"></i>
                </div>
                <div>
                    <h3>Search Employees</h3>
                    <p style="color: #666;">Find employees by name, department, etc.</p>
                </div>
            </a>
        </div>
    </div>
</body>
</html>