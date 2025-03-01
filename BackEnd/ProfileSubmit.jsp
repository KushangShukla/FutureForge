<%@ page import="java.sql.*" %>

<%
Statement st=null;
Connection cn=null;
//EXStorage dt=new EXStorage();
try
{
	
	String skills,name,interests,goals,courses_viewed;
	skills=request.getParameter("skills");
	interests=request.getParameter("interests");
	name=request.getParameter("name");
	goals=request.getParameter("goals");
	courses_viewed=request.getParameter("courses_viewed");
		
	Class.forName("com.mysql.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/futureforge","root","");
	st=cn.createStatement();
	String insert="insert into profile (skills,name,interests,goals,courses_viewed) values('"+skills+"',"+interests+",'"+name+"','"+goals+"','"+courses_viewed+"')";
	st.executeUpdate(insert);
	
	out.println("Connection is success");
}
catch(Exception ex)
{
	out.println("Error in Connection"+ex.toString());
}
%>	
<%
	/*
	String oldpass,newpass,confnewpass;
	
	oldpass=request.getParameter("txtoldpass");
	newpass=request.getParameter("txtnewpass");
	confnewpass=request.getParameter("txtconfpass");
	
	out.println("Old Password"+" "+oldpass);
	out.println("New Password"+" "+newpass);
	out.println("Confirm New Password"+" "+confnewpass);
	
	out.println("<a href='ChangePassword.jsp'>"+"Logout"+"</a>");
*/

%>