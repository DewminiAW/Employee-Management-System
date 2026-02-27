<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Employee</title>
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
            <a href="create_employee.jsp" class="nav-link active">
                <i class="fas fa-user-plus"></i> Add Employee
            </a>
        </div>
    </nav>

    <div class="container">
        <div class="card" style="max-width: 800px; margin: 0 auto;">
            <div class="card-header">
                <h2><i class="fas fa-user-plus"></i> Add New Employee</h2>
                <p>Fill in the employee details below</p>
            </div>

            <form action="create" method="POST" id="employeeForm" enctype="multipart/form-data">
                <!-- Personal Information -->
                <h3 style="color: #667eea; margin: 1.5rem 0 1rem;">Personal Information</h3>
                
                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label">First Name *</label>
                        <input type="text" class="form-control" name="firstName" required>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Last Name *</label>
                        <input type="text" class="form-control" name="lastName" required>
                    </div>
                </div>

                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label">Date of Birth</label>
                        <input type="date" class="form-control" name="dob">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Gender</label>
                        <select class="form-control" name="gender">
                            <option value="">Select Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                </div>

                <!-- Contact Information -->
                <h3 style="color: #667eea; margin: 1.5rem 0 1rem;">Contact Information</h3>
                
                <div class="form-group">
                    <label class="form-label">Email Address *</label>
                    <input type="email" class="form-control" name="email" required>
                </div>

                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" name="phone">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Alternative Phone</label>
                        <input type="tel" class="form-control" name="altPhone">
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">Address</label>
                    <textarea class="form-control" name="address" rows="3"></textarea>
                </div>

                <!-- Employment Information -->
                <h3 style="color: #667eea; margin: 1.5rem 0 1rem;">Employment Details</h3>
                
                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label">Employee ID *</label>
                        <input type="text" class="form-control" name="employeeId" required>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Department</label>
                        <select class="form-control" name="department">
                            <option value="">Select Department</option>
                            <option value="it">IT</option>
                            <option value="hr">Human Resources</option>
                            <option value="finance">Finance</option>
                            <option value="marketing">Marketing</option>
                            <option value="operations">Operations</option>
                        </select>
                    </div>
                </div>

                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label">Position</label>
                        <input type="text" class="form-control" name="position">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Join Date</label>
                        <input type="date" class="form-control" name="joinDate">
                    </div>
                </div>

                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label">Salary (LKR)</label>
                        <input type="number" class="form-control" name="salary">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Employment Type</label>
                        <select class="form-control" name="employmentType">
                            <option value="fulltime">Full Time</option>
                            <option value="parttime">Part Time</option>
                            <option value="contract">Contract</option>
                            <option value="intern">Intern</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">Upload Photo</label>
                    <input type="file" class="form-control" name="photo" accept="image/*">
                </div>

                <!-- Form Actions -->
                <div style="display: flex; gap: 1rem; margin-top: 2rem;">
                    <button type="submit" class="btn btn-primary" style="flex: 1;">
                        <i class="fas fa-save"></i> Save Employee
                    </button>
                    <button type="reset" class="btn" style="flex: 1; background: #6c757d; color: white;">
                        <i class="fas fa-undo"></i> Reset
                    </button>
                    <a href="view_employees.jsp" class="btn" style="flex: 1; background: #dc3545; color: white;">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </form>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/js/validation.js"></script>
</body>
</html>