<%@page language="Java" import="java.sql.*,java.util.*"%>
<%@ page import="static java.lang.Class.*" %>
<html>
<head>
    <title>Patient Appointment</title>
</head>

<body bgcolor="skyblue" align="center">

<%

    String user=request.getParameter("hid");
    String btn=request.getParameter("btn");
    if(btn.equals("Take Appointment"))
    {


%>

<form method=post action=afterAppoint.jsp>
    <br><center>Enter Doctor's Name:
    <input type=text name=txtdname>&nbsp;</center>
    <br><center>Enter Date:
    <input type=text name=txtdt>&nbsp;</center>

    <br><center>Patient name:
    <input type=text name=txtpname>&nbsp;</center>

    <br><center>Patient age:
    <input type=text name=txtpagee>&nbsp;</center>

    <br><center>Patient Contact:
    <input type=text name=txtpcon>&nbsp;</center>

    <br><center>Patient address:
    <input type=text name=txtpadd>&nbsp;</center>


    <br><center>Appointment Time: <br></center>
    <input type=text name=txtatime>&nbsp;</center>
    <td>
        <br> Choose any of this shift
        <br>08.00 am to 10.00 am
       <br> 10.00 am to 12.00 pm
        <br>02.00 pm to 04.00 pm
        <br>04.00 pm to 06.00 pm
       <br>07.00 pm to 09.00 pm

    <center>Your status is:<input type=text name=txtst disabled=disable value=Pending></center>
    <br>
    <input type=hidden name=hidd value="<%=user%>">
    <br>
    <center><input type=submit name=done Value=Done></center>
</form>
<%}




else
{
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Niramoy","abc123");
        Statement stm=con.createStatement();
        ResultSet rs=stm.executeQuery("select * from appointment1 where username='"+user+"'");

        if(rs.next())
        {%>

<form method="post" action="userUpdate.jsp">
    <b>Enter new Date and time</b>
    <input type="text" name="t1" >
    <input type=hidden name=hid value="<%=user%>">
    <input type=submit name=btn Value=Update>
</form>

<%}

else
{
    out.println("Please take appointment");
}
}
catch(SQLException e)
{
    out.print(e);
}
}

%>
<br><br>
<a href="index.jsp"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>