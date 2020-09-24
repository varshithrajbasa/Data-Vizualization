<%@page import="java.io.FileOutputStream"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etest","root","");
	PreparedStatement ps=con.prepareStatement("SELECT result.emailid, result.subject, result.attempt, SUM( marks ) AS total, COUNT( result.attempt ) AS noquestions FROM result GROUP BY result.emailid, result.subject, result.attempt");
	ResultSet rs=ps.executeQuery();
	 int count=0;
	 String sst="",sst1="",sst2="",sst3="",sst4="";
	 HSSFWorkbook workbook = new HSSFWorkbook();
	    HSSFSheet sheet = workbook.createSheet("lawix10");
	    HSSFRow rowhead = sheet.createRow((short) 0);
	    rowhead.createCell((short) 0).setCellValue("Email");
	    rowhead.createCell((short) 1).setCellValue("Subject");
	    rowhead.createCell((short) 2).setCellValue("Attempt");
	    rowhead.createCell((short) 3).setCellValue("Questions");
	    rowhead.createCell((short) 4).setCellValue("Marks");
	    int i = 1;
	    String yemi = "D:/test.xls";
	    FileOutputStream fileOut = new FileOutputStream(yemi);
	    HSSFRow row;
	 while(rs.next())
	{
		sst=rs.getString(1);
		sst1=rs.getString(2);
		sst2=rs.getString(3);
		sst3=rs.getString(4);
		sst4=rs.getString(5);
		    row= sheet.createRow((short) i);
	        row.createCell((short) 0).setCellValue(sst);
	        row.createCell((short) 1).setCellValue(sst1);
	        row.createCell((short) 2).setCellValue(sst2);
	        row.createCell((short) 3).setCellValue(sst4);
	        row.createCell((short) 4).setCellValue(sst3);
	        
	        i++;
	    
	    
	}
     workbook.write(fileOut); 	      
	   
	 fileOut.close();
	
}

catch(Exception e){
	e.printStackTrace();
}
%>


</body>
</html>