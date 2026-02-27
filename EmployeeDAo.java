package org.Employe_System.DAo;

import org.Employe_System.model.Employee;
import org.Employe_System.util.DBConnection;

import java.sql.*;
        import java.util.ArrayList;
import java.util.List;

public class EmployeeDAo {

    // Create Employee
    public boolean createEmployee(Employee employee) {
        String sql = "INSERT INTO employees (first_name, last_name, dob, gender, email, phone, " +
                "alt_phone, address, employee_id, department, position, join_date, salary, " +
                "employment_type, photo_path, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, employee.getFirstName());
            pstmt.setString(2, employee.getLastName());
            pstmt.setDate(3, employee.getDob());
            pstmt.setString(4, employee.getGender());
            pstmt.setString(5, employee.getEmail());
            pstmt.setString(6, employee.getPhone());
            pstmt.setString(7, employee.getAltPhone());
            pstmt.setString(8, employee.getAddress());
            pstmt.setString(9, employee.getEmployeeId());
            pstmt.setString(10, employee.getDepartment());
            pstmt.setString(11, employee.getPosition());
            pstmt.setDate(12, employee.getJoinDate());
            pstmt.setBigDecimal(13, employee.getSalary());
            pstmt.setString(14, employee.getEmploymentType());
            pstmt.setString(15, employee.getPhotoPath());
            pstmt.setString(16, "active");

            return pstmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Get All Employees
    public List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT * FROM employees ORDER BY id DESC";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                employees.add(extractEmployeeFromResultSet(rs));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    // Get Employee by ID
    public Employee getEmployeeById(int id) {
        String sql = "SELECT * FROM employees WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                return extractEmployeeFromResultSet(rs);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Update Employee
    public boolean updateEmployee(Employee employee) {
        String sql = "UPDATE employees SET first_name=?, last_name=?, dob=?, gender=?, email=?, " +
                "phone=?, alt_phone=?, address=?, department=?, position=?, join_date=?, " +
                "salary=?, employment_type=?, status=? WHERE id=?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, employee.getFirstName());
            pstmt.setString(2, employee.getLastName());
            pstmt.setDate(3, employee.getDob());
            pstmt.setString(4, employee.getGender());
            pstmt.setString(5, employee.getEmail());
            pstmt.setString(6, employee.getPhone());
            pstmt.setString(7, employee.getAltPhone());
            pstmt.setString(8, employee.getAddress());
            pstmt.setString(9, employee.getDepartment());
            pstmt.setString(10, employee.getPosition());
            pstmt.setDate(11, employee.getJoinDate());
            pstmt.setBigDecimal(12, employee.getSalary());
            pstmt.setString(13, employee.getEmploymentType());
            pstmt.setString(14, employee.getStatus());
            pstmt.setInt(15, employee.getId());

            return pstmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Delete Employee
    public boolean deleteEmployee(int id) {
        String sql = "DELETE FROM employees WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            return pstmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Search Employees
    public List<Employee> searchEmployees(String keyword) {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT * FROM employees WHERE first_name LIKE ? OR last_name LIKE ? " +
                "OR email LIKE ? OR department LIKE ? OR position LIKE ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            String searchPattern = "%" + keyword + "%";
            pstmt.setString(1, searchPattern);
            pstmt.setString(2, searchPattern);
            pstmt.setString(3, searchPattern);
            pstmt.setString(4, searchPattern);
            pstmt.setString(5, searchPattern);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                employees.add(extractEmployeeFromResultSet(rs));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    // Get Dashboard Statistics
    public int getTotalEmployees() {
        String sql = "SELECT COUNT(*) FROM employees";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            if (rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getActiveEmployees() {
        String sql = "SELECT COUNT(*) FROM employees WHERE status = 'active'";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            if (rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getOnLeaveEmployees() {
        String sql = "SELECT COUNT(*) FROM employees WHERE status = 'onleave'";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            if (rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getNewHiresThisMonth() {
        String sql = "SELECT COUNT(*) FROM employees WHERE MONTH(join_date) = MONTH(CURRENT_DATE()) " +
                "AND YEAR(join_date) = YEAR(CURRENT_DATE())";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            if (rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    private Employee extractEmployeeFromResultSet(ResultSet rs) throws SQLException {
        Employee emp = new Employee();
        emp.setId(rs.getInt("id"));
        emp.setFirstName(rs.getString("first_name"));
        emp.setLastName(rs.getString("last_name"));
        emp.setDob(rs.getDate("dob"));
        emp.setGender(rs.getString("gender"));
        emp.setEmail(rs.getString("email"));
        emp.setPhone(rs.getString("phone"));
        emp.setAltPhone(rs.getString("alt_phone"));
        emp.setAddress(rs.getString("address"));
        emp.setEmployeeId(rs.getString("employee_id"));
        emp.setDepartment(rs.getString("department"));
        emp.setPosition(rs.getString("position"));
        emp.setJoinDate(rs.getDate("join_date"));
        emp.setSalary(rs.getBigDecimal("salary"));
        emp.setEmploymentType(rs.getString("employment_type"));
        emp.setPhotoPath(rs.getString("photo_path"));
        emp.setStatus(rs.getString("status"));
        emp.setCreatedAt(rs.getDate("created_at"));
        emp.setUpdatedAt(rs.getDate("updated_at"));
        return emp;
    }
}