<%@page language="java" import="java.io.*,java.sql.*"%>
<%@ page import="static java.lang.Class.*" %>
<html>
<body bgcolor="skyblue" align="center">
<br><br><br><br>
<p>
<%
    try{
        String uname = request.getParameter("txtuname");
        String pwd = request.getParameter("txtpwd");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Niramoy","abc123");
        PreparedStatement pst = conn.prepareStatement("Select USERNAME,PASSWORD from patient_table where USERNAME=? and PASSWORD=?");

        pst.setString(1, uname);
        pst.setString(2, pwd);
        ResultSet rs = pst.executeQuery();
        if(rs.next()){
            response.sendRedirect("afterlogin2.jsp");
        }

        else
            out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    catch(Exception e){
        out.println("Something went wrong !! Please try again");
    }




%>
</p>
</body>
</html>
