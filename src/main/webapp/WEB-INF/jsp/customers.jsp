<%-- 
    Document   : customers
    Created on : Nov 9, 2023, 12:27:21 AM
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
    <h1>Customers</h1>
    <table border="1">
        <tr>
            <th>Customer ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Company</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th>Postal Code</th>
            <th>Phone</th>
            <th>Fax</th>
            <th>Email</th>
            <th>Support Rep ID</th>
        </tr>
        <c:forEach items="${customers}" var="customer">
            <tr>
                <td>${customer.customerId}</td>
                <td>${customer.firstName}</td>
                <td>${customer.lastName}</td>
                <td>${customer.company}</td>
                <td>${customer.address}</td>
                <td>${customer.city}</td>
                <td>${customer.state}</td>
                <td>${customer.country}</td>
                <td>${customer.postalCode}</td>
                <td>${customer.phone}</td>
                <td>${customer.fax}</td>
                <td>${customer.email}</td>
                <td>${customer.supportRepId}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
