<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
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
            <a href="view_employees.jsp" class="nav-link">
                <i class="fas fa-users"></i> Employees
            </a>
        </div>
    </nav>

    <div class="container">
        <div class="card" style="max-width: 800px; margin: 0 auto;">
            <div class="card-header">
                <h2><i class="fas fa-edit"></i> Update Employee</h2>
                <p>Edit employee information - ID: ${param.id}</p>
            </div>

            <form action="update" method="POST" id="updateForm">
                <input type="hidden" name="id" value="${param.id}">

                <!-- Personal Information -->
                <h3 style="color: #667eea; margin: 1.5rem 0 1rem;">Personal Information</h3>
                
                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label">First Name</label>
                        <input type="text" class="form-control" name="firstName" value="John">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Last Name</label>
                        <input type="text" class="form-control" name="lastName" value="Doe">
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">Email Address</label>
                    <input type="email" class="form-control" name="email" value="john.doe@example.com">
                </div>

                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" name="phone" value="+1 234 567 890">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Department</label>
                        <select class="form-control" name="department">
                            <option value="it" selected>IT</option>
                            <option value="hr">HR</option>
                            <option value="finance">Finance</option>
                        </select>
                    </div>
                </div>

                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label">Position</label>
                        <input type="text" class="form-control" name="position" value="Senior Developer">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Salary (LKR)</label>
                        <input type="number" class="form-control" name="salary" value="150000">
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">Status</label>
                    <select class="form-control" name="status">
                        <option value="active" selected>Active</option>
                        <option value="inactive">Inactive</option>
                        <option value="onleave">On Leave</option>
                    </select>
                </div>

                <!-- Form Actions -->
                <div style="display: flex; gap: 1rem; margin-top: 2rem;">
                    <button type="submit" class="btn btn-primary" style="flex: 1;">
                        <i class="fas fa-save"></i> Update Employee
                    </button>
                    <a href="view_employees.jsp" class="btn" style="flex: 1; background: #6c757d; color: white;">
                        <i class="fas fa-arrow-left"></i> Back
                    </a>
                </div>
            </form>
        </div>
    </div>

    <script>
        // Confirmation before update
        document.getElementById('updateForm').addEventListener('submit', function(e) {
            if(!confirm('Are you sure you want to update this employee?')) {
                e.preventDefault();
            }
        });
    </script>
</body>
</html>