<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
                    <li><a href="index.html" target="_parent" class="current">Home</a></li>
                    <li><a href="AddQuestions0.jsp" target="_parent">Add Questions</a></li>
                    <li><a href="ViewQuestions0.jsp" target="_parent">View Questions</a></li>
                    <li><a href="ModifyQuestions0.jsp" target="_parent">Modify Questions</a></li>
                    <li><a href="DeleteQuestions0.jsp" target="_parent">Delete Questions</a></li>
                    <li><a href="ViewUsers.jsp" target="_parent">View Users</a></li>
                    <li><a href="DelUser.jsp" target="_parent">Delete User</a></li>
                    <li><a href="selectuser.jsp" target="_parent">select User</a></li>
                    <li><a href="Report.jsp" target="_parent">Consolidated Report</a></li>
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
            	<h2>Welcome To Admin</h2>
                
          
               
          </div>
            
            <div class="content_box">
            	
               <a href="ViewQuestions0.jsp">Do you want to change the subject</a>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<body bgcolor="#AAAAAA" class='SC'>
<%
try{
	String sub=request.getParameter("exam");
%>
<P align=center><U><B>View Questions available for subject '<%=sub%>'</B></U></P>

<Table border=1 align=center>
<tr>
<td><b>question no</b></td>
<td><b>question</b></td>
<td><b>answer1</b></td>
<td><b>answer2</b></td>
<td><b>answer3</b></td>
<td><b>answer4</b></td>
<td><b>answer</b></td>
<td><b>level</b></td>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
Statement st=cn.createStatement();

	

	ResultSet rs=st .executeQuery("select * from questions where subject='"+sub+"'");
	while(rs.next()){
		int qno1=rs.getInt("qno");
		//String code=rs.getString("code");
		String que=rs.getString("question");
		String answer1=rs.getString("ans1");
		String answer2=rs.getString("ans2");
		String answer3=rs.getString("ans3");
		String answer4=rs.getString("ans4");
		String answer=rs.getString("ans");
		String level =rs.getString("levell");
		%>
			<tr>
			<td><%=qno1%></td>
			<td><%=que%></td>
			<td><%=answer1%></td>
			<td><%=answer2%></td>
			<td><%=answer3%></td>
			<td><%=answer4%></td>
			<td><%=answer%></td>
			<td><%=level%></td>
			</tr>
<%

		}/* of while*/
		
}
catch(Exception e)


{
	e.printStackTrace();
out.println("Could not load database driver");
}

%>
</table>
                
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