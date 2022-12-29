<%@page language="Java" import="java.sql.*,java.util.*"%>
<html>
<head>
    <title>After Appt</title>
</head>
<body bgcolor="skyblue" align="center">
<br><br><br><br>

<%
    String dname=request.getParameter("txtdname");
    String dt=request.getParameter("txtdt");
    String pname=request.getParameter("txtpname");
    String pagee=request.getParameter("txtpagee");
    String pcon=request.getParameter("txtpcon");
    String padd=request.getParameter("txtpadd");

    String time1=request.getParameter("txtatime");


    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Niramoy","abc123");
    if(time1.equals("08.00 am to 10.00 am")){
        try
        {
            Statement stm1=con.createStatement();
            boolean b=stm1.execute("insert into Appointment1 values('"+dt+"','"+time1+"','"+dname+"','"+padd+"','"+pcon+"')");
        }
        catch(SQLException e)
        {
            out.println("Something went wrong3 !!");
        }
    }


    else if (time1.equals("10.00 am to 12.00 pm")) {


        Statement stm2 = con.createStatement();
        boolean b = stm2.execute("insert into Appointment1 values('" + dt + "','" + time1 + "','" + dname + "','" + padd + "','" + pcon + "')");

    }

    else if (time1.equals("02.00 pm to 04.00 pm")){



            Statement stm3=con.createStatement();
            boolean b=stm3.execute("insert into Appointment1 values('"+dt+"','"+time1+"','"+dname+"','"+padd+"','"+pcon+"')");


        }

    else if (time1.equals("04.00 pm to 06.00 pm")){


            Statement stm4=con.createStatement();
            boolean b=stm4.execute("insert into Appointment1 values('"+dt+"','"+time1+"','"+dname+"','"+padd+"','"+pcon+"')");

        }

    else if (time1.equals("07.00 pm to 09.00 pm")){

            Statement stm5=con.createStatement();
            boolean b=stm5.execute("insert into Appointment1 values('"+dt+"','"+time1+"','"+dname+"','"+padd+"','"+pcon+"')");

        }
    else {}
}
    catch(Exception e){
        out.println("Something went wrong0 !!");
        }

%>
<center><i><font size="4">Appointment Granted.</font></i></center>
<br><br><br>
<center>
    <a href=patientLogin.jsp><font size="4">LOG OUT</font></a></center>
</body>
</html>