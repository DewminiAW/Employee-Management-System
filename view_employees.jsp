<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Employees - Employee Management</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <nav class="navbar">
        <a href="../home.jsp" class="navbar-brand">
            <i class="fas fa-building"></i> EMS
        </a>
        <div class="navbar-nav">
            <a href="../home.jsp" class="nav-link">
                <i class="fas fa-home"></i> Home
            </a>
            <a href="view_employees.jsp" class="nav-link active">
                <i class="fas fa-users"></i> Employees
            </a>
            <a href="create_employee.jsp" class="nav-link">
                <i class="fas fa-user-plus"></i> Add
            </a>
            <a href="dashboard.jsp" class="nav-link">
                <i class="fas fa-chart-bar"></i> Dashboard
            </a>
        </div>
    </nav>

    <div class="container">
        <!-- Header with Search and Add Button -->
        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem;">
            <h1><i class="fas fa-users"></i> Employee Directory</h1>
            <a href="create_employee.jsp" class="btn btn-primary">
                <i class="fas fa-plus"></i> Add New Employee
            </a>
        </div>

        <!-- Search Bar -->
        <div class="search-container">
            <form action="search_results.jsp" method="GET" class="search-box">
                <input type="text" name="query" class="search-input" 
                       placeholder="Search by name, email, department...">
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-search"></i> Search
                </button>
                <button type="button" class="btn btn-success" onclick="showAdvancedSearch()">
                    <i class="fas fa-sliders-h"></i> Advanced
                </button>
            </form>
            
            <!-- Advanced Search Panel (Hidden by default) -->
            <div id="advancedSearch" style="display: none; margin-top: 1rem;">
                <div class="card">
                    <h3>Advanced Search</h3>
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem;">
                        <div class="form-group">
                            <label>Department</label>
                            <select class="form-control">
                                <option>All Departments</option>
                                <option>IT</option>
                                <option>HR</option>
                                <option>Finance</option>
                                <option>Marketing</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Position</label>
                            <select class="form-control">
                                <option>All Positions</option>
                                <option>Manager</option>
                                <option>Developer</option>
                                <option>Designer</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Status</label>
                            <select class="form-control">
                                <option>All</option>
                                <option>Active</option>
                                <option>On Leave</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Employees Table -->
        <div class="card">
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Employee</th>
                            <th>Department</th>
                            <th>Position</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample Data - Replace with JSTL foreach -->
                        <tr>
                            <td>#001</td>
                            <td>
                                <div style="display: flex; align-items: center; gap: 0.5rem;">
                                    <i class="fas fa-user-circle" style="font-size: 2rem; color: #667eea;"></i>
                                    <div>
                                        <strong>John Doe</strong>
                                        <br>
                                        <small>Joined: 2024-01-15</small>
                                    </div>
                                </div>
                            </td>
                            <td>IT</td>
                            <td>Senior Developer</td>
                            <td>john@example.com</td>
                            <td>+94 78 840 9461</td>
                            <td>
                                <span style="background: #4CAF50; color: white; padding: 0.25rem 0.75rem; border-radius: 20px; font-size: 0.8rem;">
                                    Active
                                </span>
                            </td>
                            <td>
                                <div style="display: flex; gap: 0.5rem;">
                                    <a href="update_employee.jsp?id=1" class="btn btn-primary" style="padding: 0.3rem 0.8rem;">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <button onclick="viewEmployee('1')" class="btn btn-success" style="padding: 0.3rem 0.8rem;">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button onclick="deleteEmployee('1')" class="btn btn-danger" style="padding: 0.3rem 0.8rem;">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <!-- More rows as needed -->
                    </tbody>
                </table>
            </div>
            
            <!-- Pagination -->
            <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 2rem;">
                <p>Showing 1 to 10 of 156 employees</p>
                <div style="display: flex; gap: 0.5rem;">
                    <button class="btn btn-primary" style="padding: 0.5rem 1rem;" disabled>Previous</button>
                    <button class="btn" style="background: #667eea; color: white; padding: 0.5rem 1rem;">1</button>
                    <button class="btn" style="padding: 0.5rem 1rem;">2</button>
                    <button class="btn" style="padding: 0.5rem 1rem;">3</button>
                    <button class="btn btn-primary" style="padding: 0.5rem 1rem;">Next</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        function showAdvancedSearch() {
            const panel = document.getElementById('advancedSearch');
            panel.style.display = panel.style.display === 'none' ? 'block' : 'none';
        }

        function viewEmployee(id) {
            window.location.href = 'view_employee.jsp?id=' + id;
        }

        function deleteEmployee(id) {
            if(confirm('Are you sure you want to delete this employee?')) {
                // Add delete logic here
                alert('Employee deleted successfully');
            }
        }
    </script>
</body>
</html>