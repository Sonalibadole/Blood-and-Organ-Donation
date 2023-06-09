<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
    String fullname=request.getParameter("name");
    String email=request.getParameter("email");
    String password=request.getParameter("pasword");
    String DOB=request.getParameter("DOB");
    String Aadharno=request.getParameter("Aadharno");
    String address=request.getParameter("address");
    String contact=request.getParameter("contact");
    String gender=request.getParameter("gender");
    String city=request.getParameter("city");
    
    
Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
PreparedStatement st=con.prepareStatement("insert into signup(name,emailid,password,DOB,AadharCard,address,mobileno,gender,city) values(?,?,?,?,?,?,?,?,?)");
    st.setString(1,fullname);
    st.setString(2,email);
    st.setString(3,password);
    st.setString(4,DOB);
    st.setString(5,Aadharno);
    st.setString(6,address);
    st.setString(7,contact);
    st.setString(8,gender);
    st.setString(9,city);
    st.executeUpdate();
    con.close();
    response.sendRedirect("index.jsp");
%>