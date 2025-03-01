<%@ page import="java.sql.*" %>
<%
Statement st=null;
Connection cn=null;
//EXStorage dt=new EXStorage();
try
{
	
	String fn,ln,em,fb;
	fn=request.getParameter("firstname");
	ln=request.getParameter("lastname");
	em=request.getParameter("email");
	fb=request.getParameter("feedback");
	
		
	Class.forName("com.mysql.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/futureforge","root","");
	st=cn.createStatement();
	String insert="insert into feedback(firstname,lastname,email,feedback) values('"+fn+"','"+ln+"','"+em+"','"+fb+"')";
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
	String firstname,lastname,feedback,email,rating;
	
	firstname=request.getParameter("txtfirstname");
	lastname=request.getParameter("txtlastname");
	email=request.getParameter("txtemail");
	feedback=request.getParameter("txtfeedback");
	rating=request.getParameter("txtrating");
	
	out.println("First Name"+" "+firstname);
	out.println("Last Name"+" "+lastname);
	out.println("Email"+" "+email);
	out.println("Describe Your Feedback"+" "+feedback);
	out.println("Rate Your Feedback"+" "+rating);

	
	out.println("<a href='FeedBack.jsp'>"+"Logout"+"</a>");
*/

%>