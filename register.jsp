<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Employee Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/auth.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="auth-container">
        <div class="auth-card" style="max-width: 500px;">
            <div class="auth-header">
                <i class="fas fa-user-plus" style="font-size: 3rem; color: var(--primary);"></i>
                <h1>Create Account</h1>
                <p>Register to start managing employees</p>
            </div>

            <!-- Registration Form -->
            <form action="register" method="POST" id="registerForm">
                <!-- Account Information -->
                <h4 style="color: #667eea; margin-bottom: 1rem;">Account Information</h4>
                
                <div class="form-group">
                    <label class="form-label" for="username">
                        <i class="fas fa-user"></i> Username *
                    </label>
                    <input type="text" class="form-control" id="username" name="username" 
                           placeholder="Choose a username" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="email">
                        <i class="fas fa-envelope"></i> Email Address *
                    </label>
                    <input type="email" class="form-control" id="email" name="email" 
                           placeholder="Enter your email" required>
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label" for="password">
                            <i class="fas fa-lock"></i> Password *
                        </label>
                        <input type="password" class="form-control" id="password" name="password" 
                               placeholder="Create password" required>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label" for="confirmPassword">
                            <i class="fas fa-lock"></i> Confirm Password *
                        </label>
                        <input type="password" class="form-control" id="confirmPassword" 
                               name="confirmPassword" placeholder="Confirm password" required>
                    </div>
                </div>

                <!-- Personal Information -->
                <h4 style="color: #667eea; margin: 1.5rem 0 1rem;">Personal Information</h4>
                
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem;">
                    <div class="form-group">
                        <label class="form-label" for="firstName">First Name *</label>
                        <input type="text" class="form-control" id="firstName" name="firstName" 
                               placeholder="First name" required>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label" for="lastName">Last Name *</label>
                        <input type="text" class="form-control" id="lastName" name="lastName" 
                               placeholder="Last name" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label" for="phone">Phone Number</label>
                    <input type="tel" class="form-control" id="phone" name="phone" 
                           placeholder="Enter phone number">
                </div>

                <!-- Company Information -->
                <h4 style="color: #667eea; margin: 1.5rem 0 1rem;">Company Information</h4>
                
                <div class="form-group">
                    <label class="form-label" for="company">Company Name</label>
                    <input type="text" class="form-control" id="company" name="company" 
                           placeholder="Enter company name">
                </div>

                <div class="form-group">
                    <label class="form-label" for="role">Role in Company</label>
                    <select class="form-control" id="role" name="role">
                        <option value="">Select Role</option>
                        <option value="admin">Administrator</option>
                        <option value="manager">Manager</option>
                        <option value="hr">HR Staff</option>
                        <option value="employee">Employee</option>
                    </select>
                </div>

                <!-- Terms and Conditions -->
                <div class="form-group" style="margin: 1.5rem 0;">
                    <label style="display: flex; align-items: center; gap: 0.5rem;">
                        <input type="checkbox" name="terms" required>
                        I agree to the <a href="#" style="color: #667eea;">Terms and Conditions</a> and 
                        <a href="#" style="color: #667eea;">Privacy Policy</a>
                    </label>
                </div>

                <!-- Password Strength Indicator -->
                <div id="passwordStrength" style="margin-bottom: 1rem; display: none;">
                    <div style="display: flex; gap: 0.5rem; margin-bottom: 0.5rem;">
                        <div style="flex: 1; height: 5px; background: #ddd; border-radius: 5px;">
                            <div id="strengthBar" style="height: 100%; width: 0%; background: #dc3545; border-radius: 5px;"></div>
                        </div>
                    </div>
                    <p id="strengthText" style="font-size: 0.9rem; color: #666;">Password strength: Weak</p>
                </div>

                <button type="submit" class="btn btn-primary" style="width: 100%; margin-top: 1rem;">
                    <i class="fas fa-user-plus"></i> Register
                </button>
            </form>

            <div class="auth-footer">
                <p>Already have an account? <a href="login.jsp">Login here</a></p>
            </div>
        </div>
    </div>

    <script>
        // Password strength checker
        document.getElementById('password').addEventListener('input', function() {
            const password = this.value;
            const strengthDiv = document.getElementById('passwordStrength');
            const strengthBar = document.getElementById('strengthBar');
            const strengthText = document.getElementById('strengthText');
            
            if(password.length > 0) {
                strengthDiv.style.display = 'block';
                
                let strength = 0;
                let color = '#dc3545';
                let text = 'Weak';
                
                if(password.length >= 8) strength++;
                if(password.match(/[a-z]+/)) strength++;
                if(password.match(/[A-Z]+/)) strength++;
                if(password.match(/[0-9]+/)) strength++;
                if(password.match(/[$@#&!]+/)) strength++;
                
                switch(strength) {
                    case 0:
                    case 1:
                    case 2:
                        color = '#dc3545';
                        text = 'Weak';
                        break;
                    case 3:
                        color = '#ffc107';
                        text = 'Medium';
                        break;
                    case 4:
                        color = '#28a745';
                        text = 'Strong';
                        break;
                    case 5:
                        color = '#28a745';
                        text = 'Very Strong';
                        break;
                }
                
                strengthBar.style.width = (strength * 20) + '%';
                strengthBar.style.background = color;
                strengthText.innerHTML = 'Password strength: ' + text;
            } else {
                strengthDiv.style.display = 'none';
            }
        });

        // Form validation
        document.getElementById('registerForm').addEventListener('submit', function(e) {
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            
            if(password !== confirmPassword) {
                e.preventDefault();
                alert('Passwords do not match!');
            }
        });
    </script>
</body>
</html>