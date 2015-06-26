<%-- 
    Document   : comments
    Created on : Jun 22, 2015, 3:31:09 PM
    Author     : Takeshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comments</title>
    </head>
    <body>
        <h1>Comments</h1>
       
        <%
            String path = request.getAttribute("path").toString();
            File file = new File(path);
            BufferedReader br = new BufferedReader(new FileReader(file));
            
            String line;
            while((line = br.readLine()) != null)
            {
                if (line.split(";").length > 1)
                {
                    out.println("Username: " + line.split(";")[1] + "<br>Comment: ");
                    
                }
                else
                {
                    out.println(line + "<br>");
                }
            }
            br.close();
        %>
        <a href="index.jsp">Back</a>
    </body>
</html>