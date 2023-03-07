<%-- 
    Document   : users
    Created on : 28-Feb-2023, 9:46:18 AM
    Author     : mdkul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management</title>
    </head>
    <body>
        <h1>Manage Users</h1>
        <table border="1">   
            <tr><th>Email</th><th>First Name</th><th>Last Name</th><th>Role</th><th></th><th></th></tr>
            <c:forEach items="${users}" var="user">
            <tr><td>${user.email}</td><td>${user.getfName()}</td><td>${user.getlName()}</td><td>${user.getRole().getName()}</td><td><a href="user?action=editUser&userEmail=${user.email}">Edit</a></td><td><a href="user?action=deleteUser;userEmail=${user.email}">Delete</a></td></tr>
                </c:forEach>
        </table> 
        <h2>${subTitle}</h2>
        <c:choose> 
            <c:when test="${subTitle == 'Add User'}">
            <form action="" method="post">
                Email: <input type="text" name="email"><br>
                First Name: <input type="text" name="firstName"><br>
                Last Name: <input type="text" name="latName"><br>
                Password: <input type="password" name="password"><br>
                Role: <select>
                    <c:forEach items="${roles}" var="role">
                        <option value="${role.getId()}">${role.getName()}</option>
                    </c:forEach>
                </select><br>
                <input type="submit" value="Add User">
            </form>
        </c:when>
        <c:when test="${subTitle == 'Edit User'}">
            stuff 
            Notes for me: I think I will add another querir where is says
            select * from user where email = UserEmail 
            then I should be good
        </c:when>   
        </c:choose>
        
    </body>
</html>
