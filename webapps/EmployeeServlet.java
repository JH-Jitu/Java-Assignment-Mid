// EmployeeServlet.java

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Import the missing classes (replace "your.package.path" with the actual package path)
import your.package.path.EmployeeRecords;
import your.package.path.EmployeeRecordsType;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<EmployeeRecords> employees = new ArrayList<>();

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        LocalDate dateOfBirth = LocalDate.parse(request.getParameter("dateOfBirth"));
        String email = request.getParameter("email");
        LocalDate joiningDate = LocalDate.parse(request.getParameter("joiningDate"));
        EmployeeRecordsType employeeType = EmployeeRecordsType.valueOf(request.getParameter("employeeType"));

        EmployeeRecords employee = new EmployeeRecords(id, name, dateOfBirth, email, joiningDate, employeeType);
        employees.add(employee);

        request.setAttribute("employees", employees);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
