<!-- result.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.temporal.ChronosUnit"%>
<%@ page import="EmployeeRecords"%>
<%@ page import="EmployeeRecordsType"%>
<%@ page import="CalculateLeavings"%>

<!DOC TYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Leave Calculator - Result</title>
</head>
<body>
    <h2>Employee Details and Leave Information:</h2>
    <%
        List<EmployeeRecords> employees = (List<EmployeeRecords>) request.getAttribute("employees");

        for (EmployeeRecords employee : employees) {
            int vacationLeave = CalculateLeavings.calculateLeave(employee, (employee.getEmployeeRecordsType() == EmployeeRecordsType.Officer) ? 15 : 10);
            int sickLeave = CalculateLeavings.calculateLeave(employee, (employee.getEmployeeRecordsType() == EmployeeRecordsType.Officer) ? 10 : 7);
    %>

    <div>
        <h3>Employee Information:</h3>
        <p><strong>ID:</strong> <%= employee.getId() %></p>
        <p><strong>Name:</strong> <%= employee.getName() %></p>
        <p><strong>Date of Birth:</strong> <%= employee.getDateOfBirth() %></p>
        <p><strong>Email:</strong> <%= employee.getEmail() %></p>
        <p><strong>Joining Date:</strong> <%= employee.getJoiningDate() %></p>
        <p><strong>Employee Type:</strong> <%= employee.getEmployeeRecordsType() %></p>
    </div>

    <div>
        <h3>Leave Information:</h3>
        <p><strong>Vacation Leave:</strong> <%= vacationLeave %></p>
        <p><strong>Sick Leave:</strong> <%= sickLeave %></p>
    </div>

    <hr>

    <%
        }
    %>
</body>
</html>
