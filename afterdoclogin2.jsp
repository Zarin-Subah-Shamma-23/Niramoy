<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="skyblue" align="center">
<br><br><br><br>

<%
    try{
    String duname = request.getParameter("d1");

    PrintWriter writer = response.getWriter();

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Niramoy","abc123");
    Statement st = con.createStatement();
    ResultSet rs1,rs2,rs3,rs4,rs5;
        rs1 = st.executeQuery("select * from appointment1 where doctor='who'");
    while(rs1.next())
                {writer.println("Date: "+rs1.getString(1)+"  Appointment Time: "+rs1.getString(2)+" Doctor's Name: "+rs1.getString(3)+"  Patient Address: "+rs1.getString(4)+"  Patient Phone Number: "+rs1.getString(5));}
       /* rs2 = st.executeQuery("select * from second_hour where doctor_name='"+duname+"'");
    while(rs2.next())
                {writer.println(rs2.getString(1)+"  "+rs2.getString(2)+" "+rs2.getString(3)+"  "+rs2.getString(4)+"  "+rs2.getString(5));}
        rs3 = st.executeQuery("select * from third_hour where doctor_name='"+duname+"'");
    while(rs3.next())
                {writer.println(rs3.getString(1)+"  "+rs3.getString(2)+" "+rs3.getString(3)+"  "+rs3.getString(4)+"  "+rs3.getString(5));}
        rs4 = st.executeQuery("select * from fourth_hour where doctor_name='"+duname+"'");
    while(rs4.next())
                {writer.println(rs4.getString(1)+"  "+rs4.getString(2)+" "+rs4.getString(3)+"  "+rs4.getString(4)+"  "+rs4.getString(5));}
        rs5 = st.executeQuery("select * from fifth_hour where doctor_name='"+duname+"'");
    while(rs5.next())
                {writer.println(rs5.getString(1)+"  "+rs5.getString(2)+" "+rs5.getString(3)+"  "+rs5.getString(4)+"  "+rs5.getString(5));}
*/
        con.close();
    }
    catch(Exception e ){
    out.println("Something went wrong !!");
    }
%>

<a href=docLogin.html><font size="4">LOG OUT</font></a></center>
</body>
</html>
