<!-- index.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOC TYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Leave Calculator</title>
</head>
<body>
    <h2>Enter Employee Information</h2>
    <form action="EmployeeServlet" method="post">
        <label>ID:</label>
        <input type="text" name="id" required><br>

        <label>Name:</label>
        <input type="text" name="name" required><br>

        <label>Date of Birth (yyyy-MM-dd):</label>
        <input type="text" name="dateOfBirth" required><br>

        <label>Email:</label>
        <input type="text" name="email" required><br>

        <label>Joining Date (yyyy-MM-dd):</label>
        <input type="text" name="joiningDate" required><br>

        <label>Employee Type (Officer or Staff):</label>
        <input type="text" name="employeeType" required><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
