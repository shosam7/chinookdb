<%-- 
    Document   : albums
    Created on : Nov 9, 2023, 12:21:14 AM
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
    <h1>Albums</h1>
    <table border="1">
        <tr>
            <th>Album ID</th>
            <th>Title</th>
            <th>Artist ID</th>
        </tr>
        <c:forEach items="${albums}" var="album">
            <tr>
                <td>${album.albumId}</td>
                <td>${album.title}</td>
                <td>${album.artistId}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
