<%@ page import="java.sql.*" %>

<%
Statement st=null;
Connection cn=null;

try
{

	String user,password,email,confirmpassword,phonenumber,city,country,gender,age;
	
	user=request.getParameter("username");
	email=request.getParameter("email");
	password=request.getParameter("password");
	confirmpassword=request.getParameter("confirmpassword");
	phonenumber=request.getParameter("phonenumber");
	city=request.getParameter("city");
	country=request.getParameter("country");
	gender=request.getParameter("gender");
	age=request.getParameter("age");
	

	out.println("User Name"+" "+user);
	out.println("Email"+" "+email);
	out.println("Password"+" "+password);
	out.println("ConfirmPassword"+" "+confirmpassword);
	out.println("Phone Number"+" "+phonenumber);
	out.println("City"+" "+city);
	out.println("Country"+" "+country);
	out.println("Gender"+" "+gender);
	out.println("Age"+" "+age);

	
	out.println("<a href='Register.jsp'>"+"Logout"+"</a>");

	
	

		
	Class.forName("com.mysql.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/futureforge","root","");
	st=cn.createStatement();
	String insert="insert into register(username,phonenumber,city,country,gender,email,password,confirmpassword,age) values( '"+user+"',"+Integer.parseInt(phonenumber)+",'"+city+"','"+country+"','"+gender+"','"+email+"','"+password+"','"+confirmpassword+"',"+Integer.parseInt(age)+")";
	st.executeUpdate(insert);

	out.println("Connection is success");
}
catch(Exception e)
{
	out.println("Error in Connection"+e.toString());
}


%>
