<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page import="java.sql.*" %>
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
            	
                <U><B>Choose Subject to add Questions</B></U><BR> <BR>
		<!-- <FORM action="./addqp" id=form1 name=form1 method="post">
			<table>
				<tr>
					<td>Subject</td>
					<td><SELECT name="subject">
							<OPTION value="Time and Distance">Time and Distance</OPTION>
							<option value="Tech mahindra">Tech mahindra</option>
							<option value="JAVA">JAVA</option>
							<option value="Tcs">Tcs</option>
							<OPTION value="Sentence correction">Sentence correction</OPTION>
							<OPTION value="C">C</OPTION>
							<OPTION value="C++">C++</OPTION>
							<OPTION value="VC++">VC++</OPTION>
							<OPTION value="VB">VB</OPTION>
							<OPTION value="ORACLE">ORACLE</OPTION>
							<OPTION value="MS-SQL">MS-SQL</OPTION>
					</SELECT></td>
				</tr><br><br>
				<tr>
					<td>Choose File</td>
					<td><input type="file" name="qpaper"></td>
				</tr>
				<tr>
					<td><INPUT type="submit" value="Upload" id=submit1 name=submit1></td>
				</tr>
			</table>
		</FORM> -->
                
                <%
	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	String Condition = "user1";
    
	String[] ConValues = new String[2000];
	int ConCount=0,i=0;
	String Query1="";
%>
<FORM Name='DelForm' ACTION="DelUser1.jsp">
			<CENTER><B><FONT face="verdana"> Select a record to delete from database </FONT></B></CENTER><BR><BR>
		<TABLE align=center width="25%" bordercolor=#D8D8D8 border=0>
		<TR>
		
			<TD><SELECT NAME="<%=Condition%>">
			<OPTION Value="">Select</OPTION>

<%
	try{
		 Class.forName("com.mysql.jdbc.Driver");
		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
			stmt =  con.createStatement();
		
			System.out.println("in if");
			Query1 = "Select user1 from login where user1 not in('admin')";
			
			String str="";
			System.out.println(Query1);
			rs = stmt.executeQuery(Query1);
			int rCount=0;
				while(rs.next()){
					String x = rs.getString(1);
					ConValues[i]=x;
					%><OPTION Value=<%=ConValues[i]%>><%=ConValues[i]%></OPTION><%
					i++;
				}
			stmt.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
			stmt.close();
			con.close();
			%><%=e%><%
		}
%>
		</SELECT></TD>
		</TR>
		 <TR><TD align=center Colspan=2><Input type="submit" name=submit value='Delete'></TD></TR> 
		</TABLE>
		
                
                
                
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