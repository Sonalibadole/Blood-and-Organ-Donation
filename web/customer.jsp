
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<%
    response.addHeader("Pragma","no-Cache");
    response.addHeader("Cache-Control","no-Store");
    String value=(String)session.getAttribute("CALL");
    if(value==null)
    {
    response.sendRedirect("index.jsp");
    }
    if(session==null)
    {
    response.sendRedirect("index.jsp");
    }
 %>
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
            <form action="signupcode.jsp">
        <table width="50%" height="70%" align="center" cellspacing="5" cellpadding="5" class="form">
            <tr align="center" bgcolor="red">
                <td colspan="2" style="font-family: berlin sans fb;font-size: 30px">Send Your Quotation</td>
            </tr>
            
        </table>
            </form>
        </div>
    </body>
</html>

