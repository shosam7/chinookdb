<%-- 
    Document   : tracks
    Created on : Nov 9, 2023, 12:14:44 AM
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
    <h1>Tracks</h1>
    <table border="1">
        <tr>
            <th>Track ID</th>
            <th>Name</th>
            <th>Album ID</th>
            <th>Media Type ID</th>
            <th>Genre ID</th>
            <th>Composer</th>
            <th>Milliseconds</th>
            <th>Bytes</th>
            <th>Unit Price</th>
        </tr>
        <c:forEach items="${tracks}" var="track">
            <tr>
                <td>${track.trackId}</td>
                <td>${track.name}</td>
                <td>${track.albumId}</td>
                <td>${track.mediaTypeId}</td>
                <td>${track.genreId}</td>
                <td>${track.composer}</td>
                <td>${track.milliSeconds}</td>
                <td>${track.bytes}</td>
                <td>${track.unitPrice}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
