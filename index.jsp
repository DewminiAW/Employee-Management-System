<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .hero-section {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            color: white;
        }
        .hero-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }
        .hero-title {
            font-size: 3.5rem;
            margin-bottom: 1rem;
            animation: fadeInUp 1s ease;
        }
        .hero-subtitle {
            font-size: 1.2rem;
            margin-bottom: 2rem;
            opacity: 0.9;
            animation: fadeInUp 1s ease 0.2s both;
        }
        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-top: 4rem;
            animation: fadeInUp 1s ease 0.4s both;
        }
        .feature-card {
            background: rgba(255,255,255,0.1);
            padding: 2rem;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255,255,255,0.2);
            transition: transform 0.3s;
        }
        .feature-card:hover {
            transform: translateY(-10px);
        }
        .feature-card i {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .cta-buttons {
            display: flex;
            gap: 1rem;
            animation: fadeInUp 1s ease 0.3s both;
        }
        .btn-outline-light {
            border: 2px solid white;
            background: transparent;
            color: white;
        }
        .btn-outline-light:hover {
            background: white;
            color: #764ba2;
        }
    </style>
</head>
<body>
    <div class="hero-section">
        <div class="hero-content">
            <h1 class="hero-title">Employee Management System</h1>
            <p class="hero-subtitle">Streamline your workforce management with our comprehensive solution. Track, manage, and optimize your team's performance effortlessly.</p>
            
            <div class="cta-buttons">
                <a href="auth/login.jsp" class="btn btn-primary" style="padding: 1rem 2rem;">
                    <i class="fas fa-sign-in-alt"></i> Login
                </a>
                <a href="auth/register.jsp" class="btn btn-outline-light" style="padding: 1rem 2rem;">
                    <i class="fas fa-user-plus"></i> Register
                </a>
            </div>

            <div class="feature-grid">
                <div class="feature-card">
                    <i class="fas fa-users"></i>
                    <h3>Employee Management</h3>
                    <p>Easily add, update, and manage employee information</p>
                </div>
                <div class="feature-card">
                    <i class="fas fa-chart-line"></i>
                    <h3>Performance Tracking</h3>
                    <p>Monitor employee performance and generate reports</p>
                </div>
                <div class="feature-card">
                    <i class="fas fa-clock"></i>
                    <h3>Attendance System</h3>
                    <p>Track attendance, leaves, and working hours</p>
                </div>
                <div class="feature-card">
                    <i class="fas fa-search"></i>
                    <h3>Advanced Search</h3>
                    <p>Quickly find employees with powerful search filters</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>