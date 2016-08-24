﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="Crime_Management_System.help" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Help</title>
     <link href="~/css/user.css" rel="stylesheet">
		<link href="~/css/menux.css" rel="stylesheet">
        <link href="~/css/icon.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div id="total">
        <div id="headx">
            <div id="name">
           <center> <img src="../img/header.png" style=" margin: 20px;"/></center>
            <br />

            
         <ul class="log1">
                    <li><a href="oc/oc-login.aspx"><span class="icon-key2"></span> OC Login</a></li>
                    <li><a href="io/io-login.aspx"><span class="icon-key2"></span> IO Login</a></li>
                </ul>  
            </div>
           
            
            <div class="clear"></div>

            <div id='cssmenu'>
<ul>
   <li style="margin-left:50px;"><a href='home.aspx'><span class="icon-home"> Home</span></a></li>
   <li class='active has-sub'><a href='register.aspx'><span class="icon-user-tie"> Register</span></a>
      
   </li>


      
   </li>

    <li class='active has-sub'><a href='#'><span class="icon-library"> Complain</span></a>
      <ul>
         <li class='has-sub'><a href='complain-submit.aspx'><span class="icon-plus"> Submit Complain</span></a>
            
         </li>
         <li class='has-sub'><a href='case-status.aspx'><span class="icon-loop2"> Check Complain Status</span></a>
            
         </li>
      </ul>
   </li>
         <li class='active has-sub'><a href='help.aspx'><span class="icon-man"> Help</span></a>
    <li class='last'><a href='contact.aspx'><span class="icon-envelop"> Contacts</span></a></li>
</ul>
</div>
        
        
        
        </div>
        
        
        
        <div class="clear"></div>
        <div id="content">
            

            <div id="left">
                

                <center>
    <h4>How to Submit Complain ?</h4>
                <table id="tab2">
                    <tr>
                        <td>Register An Account :</td>
                        <td>Through this system you don't have to go to police station urself,
                            instead you can lodge a crime report from any place any time,provided that you should hava access to internet & you should be registered in the system.
                            <a href="Register.aspx">Register From Here</a>
                        </td>

                        
                    </tr>

                    <tr>
                        <td>Submit Your Complain :</td>
                        <td>Through this system you don't have to go to police station urself,instead you can lodge a crime report from any place any time,
                            provided that you should hava access to internet & you should be registered in the system.
                            <a href="complain-submit.aspx">Submit Complain</a>
                        </td>

                    </tr>
                    <tr>
                        <td>Check Complain Status :</td>
                        <td>Through this system you don't have to go to police station urself,instead you can lodge a crime report from any place any time,
                            provided that you should hava access to internet & you should be registered in the system.
                            <a href="case-status.aspx">Case Progress</a>
                        </td>

                    </tr>

                    
                    
                </table></center>


                
        </div>

            <div id="right">
        

             
                <h3><span class="icon-profile"></span> Details</h3>
       
                <p>This is an online in-time case submit service. Here, users can submit cases as similar to submiting a case in a police station. 
Just by following few simple procedures, an user can lodge a case and later can check the case status by submiting the case ID 
provided to them after they have received it.</p>
                
                
                
                 <h3><span class="icon-link"></span> Links</h3>
                <ul class="imp-links">
                    <li><a href="#"> Job Portal</a></li>
                <li><a href="#"> Car Rental</a></li>
                <li><a href="#"> Shoping Management</a></li>
                <li><a href="#"> Shop Management</a></li>
                <li><a href="#"> Office Management</a></li>
                    
                    </ul>
                
        </div>
        
        </div>
        
        <div class="clear"></div>
        
        
        
        <div id="footer">
        <div id="footarea">
       
            <div class="rows">
                <h3> <span class="icon-bullhorn"></span>  Announcement</h3>
            All citizens are informed that this is a new web facility which has been launched this year to 
       take Crime Management to steps forward.Till now all crime details used to be managed in pen-papaer 
       mode which is time consuming and there was a very much chance of lose of a complain.
      
            </div>
            
            
            <div class="rows" >
            <h3 ><span class="icon-pushpin"></span>  Notice</h3>
           To use this web facility every citizen has to register their names and other required details.
       Every time citizen wants to lodge a new complain the facility checks wheather he/she is a 
       registered citizen or not.
       The web facility is designed so that Law and Order can be maintained properly in the society.
       
            </div>
            
            
            <div class="rows" >
                <h3> <span class="icon-pie-chart"></span> Emergency Details</h3>
            <ul>
                <li><span class="icon-phone"></span>&nbsp; Dial 100 for Emergency Help .</li>
                <li><span class="icon-phone"></span>&nbsp; Dial 1090 to give Information to Police.</li>
                <li><span class="icon-phone"></span>&nbsp; Dial 1073-For Trafic Related Issue.</li>
                <li><span class="icon-phone"></span>&nbsp; 22214-3024 (Lalbazar Control Room)</li>

            </ul>
            
            </div>
            
        </div>
            <div class="clear"></div>
            <div id="copyright">
        <span style=" margin-left:150px; " class="icon-sphere"> Copyright &copy; 2015 | Nihar</span>
                <ul class="browser-icons">
                    <li><span class="icon-chrome"></span> </li>
                    <li><span class="icon-firefox"></span> </li>
                    <li><span class="icon-opera"></span> </li>

                </ul> 
        </div>
        </div>
        
        
        </div>
    </form>
</body>
</html>
