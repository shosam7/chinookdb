<%-- 
    Document   : artists
    Created on : Nov 8, 2023, 9:23:37 PM
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
    <h1>Artists</h1>
    <table border="1">
        <tr>
            <th>Artist ID</th>
            <th>Name</th>
        </tr>
        <c:forEach items="${artists}" var="artist">
            <tr>
                <td>${artist.artistId}</td>
                <td>${artist.name}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
