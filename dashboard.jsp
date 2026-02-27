<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Employee Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar">
        <a href="dashboard.jsp" class="navbar-brand">
            <i class="fas fa-building"></i> EMS
        </a>
        <div class="navbar-nav">
            <a href="dashboard.jsp" class="nav-link active">
                <i class="fas fa-home"></i> Dashboard
            </a>
            <a href="view_employees.jsp" class="nav-link">
                <i class="fas fa-users"></i> Employees
            </a>
            <a href="create_employee.jsp" class="nav-link">
                <i class="fas fa-user-plus"></i> Add Employee
            </a>
            <a href="search_results.jsp" class="nav-link">
                <i class="fas fa-search"></i> Search
            </a>
            <a href="logout" class="nav-link">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <!-- Welcome Banner -->
        <div class="card" style="background: linear-gradient(135deg, var(--primary), var(--secondary)); color: white;">
            <h1 style="color: white;">Welcome back, ${sessionScope.username}!</h1>
            <p>Here's what's happening with your employees today.</p>
        </div>

        <!-- Statistics Cards -->
        <div class="dashboard-stats">
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-users"></i>
                </div>
                <div class="stat-info">
                    <h3>Total Employees</h3>
                    <p>156</p>
                </div>
            </div>
            
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-user-check"></i>
                </div>
                <div class="stat-info">
                    <h3>Present Today</h3>
                    <p>142</p>
                </div>
            </div>
            
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-clock"></i>
                </div>
                <div class="stat-info">
                    <h3>On Leave</h3>
                    <p>8</p>
                </div>
            </div>
            
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-user-tie"></i>
                </div>
                <div class="stat-info">
                    <h3>New Hires</h3>
                    <p>6</p>
                </div>
            </div>
        </div>

        <!-- Recent Activities and Quick Actions -->
        <div style="display: grid; grid-template-columns: 2fr 1fr; gap: 1.5rem;">
            <!-- Recent Activities -->
            <div class="card">
                <div class="card-header">
                    <h2><i class="fas fa-history"></i> Recent Activities</h2>
                </div>
                <ul class="activity-list">
                    <li class="activity-item">
                        <span class="activity-dot"></span>
                        <div>
                            <strong>John Doe</strong> joined as Software Engineer
                            <br>
                            <small>2 minutes ago</small>
                        </div>
                    </li>
                    <li class="activity-item">
                        <span class="activity-dot warning"></span>
                        <div>
                            <strong>Jane Smith</strong> requested leave
                            <br>
                            <small>1 hour ago</small>
                        </div>
                    </li>
                    <li class="activity-item">
                        <span class="activity-dot"></span>
                        <div>
                            <strong>Mike Johnson</strong> updated profile
                            <br>
                            <small>3 hours ago</small>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- Quick Actions -->
            <div class="card">
                <div class="card-header">
                    <h2><i class="fas fa-bolt"></i> Quick Actions</h2>
                </div>
                <div style="display: flex; flex-direction: column; gap: 1rem;">
                    <a href="create_employee.jsp" class="btn btn-primary">
                        <i class="fas fa-user-plus"></i> Add New Employee
                    </a>
                    <a href="view_employees.jsp" class="btn btn-success">
                        <i class="fas fa-list"></i> View All Employees
                    </a>
                    <a href="search_results.jsp" class="btn btn-info">
                        <i class="fas fa-search"></i> Search Employees
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
</body>
</html>