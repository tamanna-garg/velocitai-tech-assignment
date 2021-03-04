<%@page contentType='text/html' pageEncoding='UTF-8'%>
<!DOCTYPE html>
    <html>
    <head>
        <title>ADMIN-LOGIN</title>
    </head>
    <body>
        <%
           String username=request.getParameter("username");
           String password=request.getParameter("password");
           Class.forName("org.postgresql.Driver")
           connection con=DriverManager.getconnection("jdbc:postgresql://localhost:3306/website","root","root");
           Statement st=con.createStatement();
           ResultSet rs;
        rs=con.executeQuery("select*from admin where username=" ""+ userid + " " and password=" " + pwd +" " );
        if(rs.next())
        {
           session.setAttribute("userid",userid);
           respond.sendRedirect("productlist.html");
           
        }
           else{
           request.setAttribute("errorMessage","invalid user or password");
           respond.sendRedirect("login.html");
           
           }
                </body>
    
    </html>