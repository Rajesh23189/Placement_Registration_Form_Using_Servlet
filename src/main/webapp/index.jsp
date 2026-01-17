<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JSP Web Application</title>
</head>
<body>
    <h1>JSP Web App - Generating Dynamic Response</h1>

       <%@ page import  = "java.util.Date"

        %>

    <%!
           int age  = 20;
    %>

    <%
                      String   fname  = request.getParameter("fname");
                      String  lname  = request.getParameter("lname");
                      String   email  = request.getParameter("email");
                      String  deperment  = request.getParameter("dept");
                      String  year =  request.getParameter("year");
                      String skills = request.getParameter("skills");
                      Date date = new Date();



                      out.println("Hello "+fname+" "+lname);
                      out.println("I Know You Are Interested In : "+skills);



    %>

    <h1>Today Date Is : <%= date %></h1>
      <h1><%= fname %></h1>
        <h1><%= lname %></h1>
          <h1><%= email %></h1>
            <h1><%= deperment %></h1>
              <h1><%=skills %></h1>




</body>
</html>
