<%-- 
    Document   : employees
    Created on : Nov 9, 2023, 12:40:24 AM
    Author     : sho7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Employees</h1>
        <table border="1">
            <tr>
                <th>Employee ID</th>
                <th>Last Name</th>
                <th>First Name</th>
                <th>Title</th>
                <th>Reports To</th>
                <th>Birth Date</th>
                <th>Hire Date</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>Postal Code</th>
                <th>Phone</th>
                <th>Fax</th>
                <th>Email</th>
            </tr>
            <c:forEach items="${employees}" var="employee">
                <tr>
                    <td>${employee.employeeId}</td>
                    <td>${employee.lastName}</td>
                    <td>${employee.firstName}</td>
                    <td>${employee.title}</td>
                    <td>${employee.reportsTo}</td>
                    <td>${employee.birthDate}</td>
                    <td>${employee.hireDate}</td>
                    <td>${employee.address}</td>
                    <td>${employee.city}</td>
                    <td>${employee.state}</td>
                    <td>${employee.postalCode}</td>
                    <td>${employee.phone}</td>
                    <td>${employee.fax}</td>
                    <td>${employee.email}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
ss