<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%String user=(String)session.getAttribute("user");%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Web Design - Free CSS Templates</title>
<meta name="keywords" content="free css templates, web design, 2-column, html css" />
<meta name="description" content="Web Design is a 2-column website template (HTML/CSS) provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
<!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
<link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
<!--////// END  \\\\\\\-->

<!--////// INCLUDE THE JS AND PIROBOX OPTION IN YOUR HEADER  \\\\\\\-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/piroBox.1_2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$().piroBox({
			my_speed: 600, //animation speed
			bg_alpha: 0.5, //background opacity
			radius: 4, //caption rounded corner
			scrollImage : false, // true == image follows the page, false == image remains in the same open position
			pirobox_next : 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
			pirobox_prev : 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
			close_all : '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
			slideShow : 'slideshow', // just delete slideshow between '' if you don't want it.
			slideSpeed : 4 //slideshow duration in seconds(3 to 6 Recommended)
	});
});
</script>
<!--////// END  \\\\\\\-->
</head>
<body>

<div id="templatemo_body_wrapper">
<div id="templatemo_wrapper">

	<div id="tempaltemo_header">
    	<span id="header_icon"></span>
    	<div id="header_content">
        	<div id="site_title">
				<a href="http://www.templatemo.com" target="_parent"><img src="images/templatemo_logo.png" alt="LOGO" /></a>            </div>
            <p></p>
		 
		</div>
    </div> <!-- end of header -->
    
    <div id="templatemo_main_top"></div>
    <div id="templatemo_main"><span id="main_top"></span><span id="main_bottom"></span>
    	
        <div id="templatemo_sidebar">
        
        	<div id="templatemo_menu">
                <ul>
                   <li><A HREF="instructions.jsp" target="_parent" class="current">Instructions</a></li>
                    <li><a href="exams.jsp" target="_parent">EXAM</a></li>
                    <li><a href="ViewProfile.jsp" target="_parent">View Profile</a></li>
                    <li><a href="EditProfile.jsp" target="_parent">Edit Profile</a></li>
                    <li><a href="ChangePassword1.jsp" target="_parent">ChangePassword</a></li>
                   
                     <li><a href="Logout.jsp" target="_parent">Logout</a></li>
              </ul>    	
            </div> <!-- end of templatemo_menu -->
        
        	<div class="sidebar_box">
            	
                
                        
            </div>
            
            <div class="sidebar_box">
            	
                
                        
            </div>
            
           
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
        	
            <div class="content_box">
            	<!-- <h2>Welcome To Admin</h2> -->
            	<FORM NAME="LOGIN" ACTION="ChangePassword.jsp">


<TABLE Border=0 align=center style="font-size: 12px;color:#333;font-family: arial;">
<TR class=row_title ALIGN="center">
	   <TH COLSPAN="2"> <U><B>Change Password</B></U></TH>
</TR>

<TR class=row_even>
	<TD>EmailID</TD>
	<TD><input TYPE=text name=user size="20" value="<%=user%>" readonly></TD>
</TR>
<TR class=row_odd>
	<TD>Old Password</TD>
	<TD><input TYPE=password name=password size="8"  maxlength="8"></TD>
</TR>
<TR class=row_even>
	<TD>New Password </TD>
	<TD><input TYPE=password name=newPassword size="8"  maxlength="8"></TD>
</TR>
<TR class=row_odd>
	<TD><INPUT TYPE=submit name=submit value="Submit">
</TD>
	<TD><INPUT TYPE=reset name=resett value="Reset" >
</TD>
</TR>
</TABLE>
<br><br>
</FORM>
                
          	
               
          </div>
            
            <div class="content_box">
            	

                <div class="col_w290 cw290_last float_r">
                
                
                   
				</div>
                
              </div>
					
                </div> <!-- end of Gallery -->
                
             
        <div class="cleaner"></div>    
    </div>
    
    <div id="templatemo_main_bottom">
    </div>

</div> <!-- end of wrapper -->
</div>

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
        Copyright © 2048 <a href="#">Your Company Name</a> | 
        <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
        
    </div>
</div>


</html>