import java.io.File;
import java.io.FileInputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.poi.ss.usermodel.Cell;            
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;                     
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

public class markUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int maxFileSize = 5000 * 1024;
	private int maxMemSize = 400 * 1024;
	private File file;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		String file=request.getParameter("fname");
	       System.out.println("file name is:"+file);
	             HttpSession session=request.getSession(true);
	           
	             //System.out.println(s_id);
			
		      File excelFile =null; // change this code to get the file from upload	    
		   	    
		     
		      Connection con=null;
		      PreparedStatement pst=null;
		      FileInputStream fileInputeStream=null;
		      Workbook workbook=null;
		      Sheet sheet=null;
		      Row row=null;  
		      try
		      {
						Class.forName("com.mysql.jdbc.Driver");  
			             con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/reportgenerator","root","");  
			             excelFile = new File("F:/"+file);
			  		   System.out.println(excelFile);
			  	       fileInputeStream = new FileInputStream(excelFile);     
			  	       System.out.println(fileInputeStream);
			  	       workbook = WorkbookFactory.create(fileInputeStream);
			  	       sheet = workbook.getSheetAt(0); // 0 is to read the first sheet.
			  	      // workbook.getNumberOfSheets(); - using this number you can read all the sheets in the excel sheet
			  	       System.out.println("sheet is"+sheet);
			  	       int lastRow = sheet.getLastRowNum();
			  	      System.out.println("last row is"+lastRow);
			  	      //sheet.getFirstRowNum()+1 used to skip the header part.
			  	       for (int i = sheet.getFirstRowNum()+1; i <= lastRow; i++) {
			  	       row = (Row) sheet.getRow(i);
			  	       
			  	    
			 	    
			  	       
			  	       
			                String Hallticket = row.getCell(0).getStringCellValue();
			                String SubjectCode = row.getCell(1).getStringCellValue();
			                String SubjectName = row.getCell(2).getStringCellValue();
			                int InternalMarks = (int) row.getCell(3).getNumericCellValue();
			               
			                int ExternalMarks = (int) row.getCell(4).getNumericCellValue();
			                int TotalMarks = (int) row.getCell(5).getNumericCellValue();
			                int Credits = (int) row.getCell(6).getNumericCellValue();
			               
			                pst = con.prepareStatement("INSERT INTO marks VALUES(?,?,?,?,?,?,?)");
			                pst.setString(1, Hallticket);
			                pst.setString(2, SubjectCode);
			                pst.setString(3, SubjectName);
			                pst.setInt(4, InternalMarks);
			                pst.setInt(5, ExternalMarks);
			                pst.setInt(6, TotalMarks);
			                pst.setInt(7, Credits);
			               
			                int s = pst.executeUpdate();  
			                		                	
			            }
					


			response.sendRedirect("adminhome.jsp");

		} 
		catch (Exception ex) {
			System.out.println(ex);
		}
	}
}