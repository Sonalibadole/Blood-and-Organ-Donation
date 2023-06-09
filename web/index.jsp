
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
            function upperCase()
            {
                var x=document.getElementById("name").value;
                document.getElementById("name").value=x.toUpperCase();
            }
        </script>
    </head>
    <body>
        
        <div style="background-image: url('images/Cholesterol_share.jpg'); width: 100%; height:1000px;background-repeat:no-repeat; background-size:100%;">
            <script>
            var d=new Date();
            var day=d.getDate();
            var month=d.getMonth()+1;
            var year=d.getFullYear();
            document.write(day+"."+month+"."+year);
            
        </script>
        <table width="100%">
            <tr >
                <td width="45%"><img src="images/logo.png" style="width:200px;height:150px"></td>
                <td style="font-family: Berlin Sans FB;align:center "><font SIZE="50px">Organ and Blood Donation</td>
            </tr>
        </table>
            
        <table width="100%" border="0" class="tabletheme">
            <tr ALIGN="center">
                <td  width="20%" class="currenttheme">Home</td>
                <td class="tdtheme" width="20%">About</td>
                <td class="tdtheme" width="20%">Contact</td>
                <td class="tdtheme" width="20%"> Cities</td>
                <td class="tdtheme" width="20%"><a href="login.jsp">Login</a></td>
                <td class="tdtheme" width="20%">Hospitals</td>
            </tr>
        </table>
        <img src="../../changed/web/images/Cholesterol_share.jpg" alt=".,.,.,.,.,"/>
        <img src="../../changed/web/images/back.jpg" alt="......"/>
        <img src="../../changed/web/images/back.jpg" width="100%" height="800px" alt="alt"/>
            <form action="signupcode.jsp">
        <table width="50%" height="70%" align="center" cellspacing="5" cellpadding="5" class="form">
            <tr align="center" bgcolor="red">
                <td colspan="2" style="font-family: berlin sans fb;font-size: 30px">N E W &nbsp;&nbsp;&nbsp; U S E R&nbsp;&nbsp;&nbsp;  S I G N &nbsp;&nbsp;&nbsp;  U P</td>
            </tr>
            <tr>
                <td class="title">Full Name</td>
                <td><input type="text" name="name" class="texttheme" onblur="upperCase()" placeholder="enter name here"></td>
            </tr>
            <tr>
                <td class="title">E-mail</td>
                <td><input type="email" name="email" class="texttheme" placeholder="enter E-mai"></td>
            </tr>
            <tr>
                <td class="title">Password</td>
                <td><input type="password" name="password" class="texttheme" placeholder="enter Password"></td>
            </tr>
            <tr>
                <td class="title">Date of Birth</td>
                <td><input type="date" name="DOB" class="texttheme"></td>
            </tr>
            <tr>
                <td class="title">Aadhar No.</td>
                <td><input type="text" name="Aadharno" class="texttheme"></td>
            </tr>
            <tr>
                <td class="title">Address</td>
                <td><textarea name="address" class="texttheme" style="height:60px" placeholder="Enter Address"></textarea></td>
            </tr>
            <tr>
                <td class="title">contact No.</td>
                <td><input type="number" name="contact" class="texttheme" placeholder="enter Number"></td>
            </tr>
            <tr>
                <td class="title">Gender</td>
                <td><select name="gender" class="texttheme">
                        <option>Select Gender</option>
                        <option>Female</option>
                        <option>Male</option>
                        <option>Other</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="title">City</td>
                <td><select name="city" class="texttheme">
                        <option>Select City</option>
                        <option>Indore</option>
                        <option>Bhopal</option>
                        <option>Gwalior</option>
                    </select>
                </td>
            </tr>
            
            <tr>
                <td><input type="submit" value="SIGN UP" class="buttontheme"></td>
                <td><input type="reset" value="RESET" class="buttontheme"></td>
            </tr>
        </table>
            </form>
        </div>
    </body>
</html>

