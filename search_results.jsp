<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
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
            <a href="search_results.jsp" class="nav-link active">
                <i class="fas fa-search"></i> Search
            </a>
        </div>
    </nav>

    <div class="container">
        <!-- Search Summary -->
        <div class="card" style="background: linear-gradient(135deg, #667eea, #764ba2); color: white;">
            <div style="display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <h2 style="color: white;">Search Results</h2>
                    <p>Found 12 employees matching "developer"</p>
                </div>
                <i class="fas fa-search" style="font-size: 3rem; opacity: 0.5;"></i>
            </div>
        </div>

        <!-- Search Filters -->
        <div class="card">
            <form action="search_results.jsp" method="GET" class="search-box">
                <input type="text" name="q" class="search-input" value="developer" placeholder="Search...">
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-search"></i> Search
                </button>
                <button type="button" class="btn btn-success" onclick="filterResults()">
                    <i class="fas fa-filter"></i> Filter
                </button>
            </form>
        </div>

        <!-- Results Tabs -->
        <div style="margin-bottom: 1rem;">
            <button class="btn btn-primary" style="border-radius: 0;" onclick="showTab('all')">All Results</button>
            <button class="btn" style="border-radius: 0;" onclick="showTab('employees')">Employees</button>
            <button class="btn" style="border-radius: 0;" onclick="showTab('departments')">Departments</button>
        </div>

        <!-- Search Results Table -->
        <div class="card">
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Relevance</th>
                            <th>Employee</th>
                            <th>Department</th>
                            <th>Position</th>
                            <th>Match</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample Results -->
                        <tr>
                            <td>
                                <i class="fas fa-star" style="color: #FFD700;"></i>
                                <i class="fas fa-star" style="color: #FFD700;"></i>
                                <i class="fas fa-star" style="color: #FFD700;"></i>
                                <i class="fas fa-star" style="color: #FFD700;"></i>
                                <i class="fas fa-star" style="color: #FFD700;"></i>
                            </td>
                            <td>
                                <div style="display: flex; align-items: center; gap: 0.5rem;">
                                    <i class="fas fa-user-circle" style="font-size: 2rem; color: #667eea;"></i>
                                    <div>
                                        <strong>John Developer</strong>
                                        <br>
                                        <small>john@example.com</small>
                                    </div>
                                </div>
                            </td>
                            <td>IT</td>
                            <td>Senior Developer</td>
                            <td>
                                <span style="background: #4CAF50; color: white; padding: 0.25rem 0.5rem; border-radius: 20px; font-size: 0.8rem;">
                                    95% Match
                                </span>
                            </td>
                            <td>
                                <a href="view_employees.jsp" class="btn btn-primary" style="padding: 0.3rem 0.8rem;">
                                    <i class="fas fa-eye"></i> View
                                </a>
                            </td>
                        </tr>
                        <!-- More results... -->
                    </tbody>
                </table>
            </div>
        </div>


        <!-- No Results Message (Hidden by default) -->
        <div id="noResults" class="card" style="text-align: center; display: none;">
            <i class="fas fa-frown" style="font-size: 4rem; color: #6c757d; margin-bottom: 1rem;"></i>
            <h3>No results found</h3>
            <p>Try adjusting your search or filters</p>
            <a href="view_employees.jsp" class="btn btn-primary">Browse All Employees</a>
        </div>
    </div>

    <script>
        function filterResults() {
            // Implement filter logic
            alert('Filter options will appear here');
        }

        function showTab(tabName) {
            // Implement tab switching
            console.log('Showing tab:', tabName);
        }
    </script>
</body>
</html>