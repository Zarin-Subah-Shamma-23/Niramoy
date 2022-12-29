<%@page language="java" import="java.io.*,java.sql.*"%>
<html>
<body bgcolor="skyblue" align="center">
<br><br><br><br>

<%
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Niramoy","abc123");

        String uname = request.getParameter("d1");
        String pwd = request.getParameter("d2");

        Statement st = con.createStatement();
        ResultSet rs;
        rs = st.executeQuery("select * from docinsert where username='" + uname + "' and password='" + pwd + "'");
        if (rs.next()) {


            response.sendRedirect("afterdoclogin2.jsp");
        } else {
            out.println("Invalid password <a href='docLogin.html'>try again</a>");
        }
    }
    catch(Exception e){
        out.println("Something went wrong !! Please try again");
    }


%>


<a href="index.jsp"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>