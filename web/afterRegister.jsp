
<%@page language="java" import="java.io.*,java.sql.*"%>

<body bgcolor="skyblue" >
<br><br><br><br>

<%
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Niramoy","abc123");



        String name,age,phone_no,city,username,password,sex;
        name=request.getParameter("txtnm");
        age=request.getParameter("txtdb");
        phone_no=request.getParameter("tpn");
        city=request.getParameter("ttct");
        username=request.getParameter("ttun");
        password=request.getParameter("ttpwd");
        sex=request.getParameter("txtrad");

        Statement st = con.createStatement();
        try (ResultSet rs = st.executeQuery("INSERT INTO PATIENT_TABLE VALUES ('" + name + "','" + age + "','" + phone_no + "','" + city + "','" + username + "','" + password + "','" + sex + "')")) {
        }


        response.sendRedirect("index.jsp");
    }
    catch(Exception e){
        out.println("Something went wrong !! Please try again");
    }


%>


<a href="index.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>