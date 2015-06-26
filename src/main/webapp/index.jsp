<%-- 
    Document   : index
    Created on : Jun 22, 2015, 2:31:48 PM
    Author     : Takeshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Post a comment!</h1>
        <form action="PostComment" method="post">
            
            <input placeholder="Username" type="text" name="user"><br>
            <textarea  rows="4" cols="50" name="comment" 
                       placeholder="Enter Comment Here..."></textarea><br>
            <input type="submit" value="Post Comment">
        </form>
    </body>
</html>