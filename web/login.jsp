<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<html>
    <head>
        <style>
            .texttheme{
                width: 250px;
                height: 30px;
                border-radius: 30px;
                background-color: rgba(240,240,240.0.3);
                border-color: red;
                color: black;
                font-size: 20px;
            }
            .buttontheme{
                width: 150px;
                height: 30px;
                border-radius: 30px;
                background-color: red;
                color: black;
                font-size: 20px;
            }
            
            .tabletheme{
                width: 100%;
                height: 50px;
                background-color:rgba(255,255,255,0.7);
                border-radius: 40px;
                border:solid;
                color: black;
                font-weight: bold;
                font-family: arial;
            }
            .title{
                font-size: 20px;
                font-family: berlin sans fb;
                color: white;
            }
            .tdtheme{
                width:20px;
                height: 60px;
            }
            .tdtheme:hover,.currenttheme{
                box-shadow:0 0 60px red,0 0 60px red;
                background-repeat: no-repeat;
                background-size: 100%;
                background-color:red;
                border-radius: 40px;
                width:15px;
            }
            .form{
                background-color:rgba(0,0,0,0.6);
                box-shadow:0 0 60px red;
            }
            
        </style>
        <script>
            function validate()
            {
                if(frm.email.value==0)
                    alert("email id required");
                if(frm.password.value==0)
                    alert("password is required");
            }
        </script>
    </head>
    <body>
        <div style="background-image: url('images/person-holding-anatomic-heart-model-educational-purpose.jpg'); width: 100%; height:1000px;background-repeat:no-repeat; background-size:100%;">
        <table width="100%">
            <tr >
                <td width="45%"><img src="images/logo.png" style="width:200px;height:150px"></td>
                <td style="font-family: Berlin Sans FB;align:center "><font SIZE="50px">Organ and Blood Donation</td>
            </tr>
        </table>
            
        <table width="100%" border="0" class="tabletheme">
            <tr ALIGN="center">
                <td  width="20%" class="currenttheme"><a href="index.jsp">Home</a></td>
                <td class="tdtheme" width="20%">About</td>
                <td class="tdtheme" width="20%">Contact</td>
                <td class="tdtheme" width="20%"> Cities</td>
                <td class="tdtheme" width="20%">Login</td>
                <td class="tdtheme" width="20%">Hospitals</td>
            </tr>
        </table>
            <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%   
    int RESULT=0;
    String button1=request.getParameter("btn");
    if(button1!=null && button1.equals("SIGNIN"))
    {
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    
Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
PreparedStatement st=con.prepareStatement("select * from signup where emailid=? and password=?");
    st.setString(1,email);
    st.setString(2,password);
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
    String id=rs.getString(1);
    session.setAttribute("MY_ID_VALUE",id);
    
        session.setAttribute("CALL",email);
    response.sendRedirect("customer.jsp");
    }
    else
    {
      RESULT=1;
    }
}
%>
            <form action="" name="frm">
        <table width="50%" height="70%" align="center" cellspacing="5" cellpadding="5" class="form">
            <tr align="center" bgcolor="red">
                <td colspan="2" style="font-family: berlin sans fb;font-size: 30px">Send Your Quotation</td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <%if(button1!=null && RESULT==1)
                    {%>
                    <font color="red" size="5px">Invalid Id/Password</font>
                    <%}%>
                </td>
            </tr>
            <tr>
                <td class="title">E-mail</td>
                <td><input type="email" name="email" class="texttheme" placeholder="enter E-mail"></td>
            </tr>
            <tr>
                <td class="title">Password</td>
                <td><input type="password" name="password" class="texttheme" placeholder="enter Password"></td>
            </tr>
            
            
            <tr align="center">
                <td colspan="2"><input type="submit" value="SIGNIN" name="btn" class="buttontheme" onClick="validate()"></td>
            </tr>
        </table>
            </form>
        </div>
    </body>
</html>


