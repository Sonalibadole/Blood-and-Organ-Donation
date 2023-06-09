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
                background-color:rgba(0,0,0,0.3);
                box-shadow:0 0 60px red;
            }
            
        </style>
    </head>
    <body>
        <div style="background-image: url('images/Cholesterol_share.jpg'); width: 100%; height:1000px;background-repeat:no-repeat; background-size:100%;">
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
                <td class="tdtheme" width="20%"><a href="passwordsetting.jsp">Setting</a></td>
                <td class="tdtheme" width="20%"> Cities</td>
                <td class="tdtheme" width="20%"><a href="blood.jsp">Donate Blood</a></td>
                <td class="tdtheme" width="20%"><a href="organ.jsp"> Donate Organ</a></td>
                <td class="tdtheme" width="20%">Hospitals</td>
                <td class="tdtheme" width="20%"><a href="deletesession.jsp">SignOut</a></td>
            </tr>
        </table>
            <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
        String button1=request.getParameter("btn1");
        if(button1!=null && button1.equals("submit"))
        {
    String userName=request.getParameter("uName");
    String contactNo=request.getParameter("cont");
    String medi=request.getParameter("medi");
    int  age=Integer.parseInt(request.getParameter("age"));
    String blood=request.getParameter("blood");
    String hospital=request.getParameter("hospital");
        String date=request.getParameter("date");
    
    
Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

    PreparedStatement st=con.prepareStatement("insert into blood values(?,?,?,?,?,?,?)");
    st.setString(1,userName);
    st.setString(2,contactNo);
    st.setString(3,medi);
    st.setInt(4,age);
    st.setString(5,blood);
    st.setString(6,hospital);
    st.setString(7,date);
    st.executeUpdate();
    con.close();
    response.sendRedirect("blood.jsp");
}
%>
            <form action="">
        <table width="50%" height="70%" align="center" cellspacing="5" cellpadding="5" class="form">
            <tr align="center" bgcolor="red">
                <td colspan="2" style="font-family: berlin sans fb;font-size: 30px">Send Your Quotation</td>
            </tr>
                        <tr>
                <td class="title">User name</td>
                <td><input type="text" name="uName" class="texttheme"></td>
            </tr>
            
            <tr>
                <td class="title">Contact No</td>
                <td><input type="number" name="cont" class="texttheme"></td>
            </tr>

            
            <tr>
                <td class="title">medical certificate</td>
                <td><input type="boolean" name="medi" class="texttheme" placeholder="."></td>
            </tr>
            <tr>
                <tr>
                <td class="title">Age</td>
                <td><input type="number" name="age" class="texttheme" placeholder="enter age"></td>
            </tr>
            <tr>
                <td class="title">Blood</td>
                <td><select name="blood" class="texttheme">
                        <option>Select Blood group</option>
                        <option>A+</option>
                        <option>A-</option>
                        <option>B+</option>
                        <option>B-</option>
                        <option>O+</option>
                        <option>O-</option>
                        <option>AB+</option>
                        <option>AB-</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="title">Hospital</td>
                <td><select name="hospital" class="texttheme">
                        <option>Select hospital</option>
                        <option>MYH</option>
                        <option>Rukmani</option>
                        <option>Coral</option>
                    </select>
                </td>
            </tr>
            
            <tr>
                <td class="title">Date of Donation</td>
                <td><input type="date" name="date" class="texttheme"></td>
            </tr>
            <tr align="center">
                <td colspan=2>
                    <input type="submit" value="submit" name="btn1" class="buttontheme">
                    <input type="reset" value="clear" name="btn2" class="buttontheme">
                </td>
            </tr>        
        </table>
            </form>
        </div>
    </body>
</html>

