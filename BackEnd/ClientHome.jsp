<%@ page import="java.sql.*"%>
<%
	String idd=session.getAttribute("myid").toString();
	out.println("<h1>"+"Welcome"+" "+idd+"<h1>");
	out.println("<a href='LogIn.jsp'>Logout</a>");
	out.println("<a href='Profile.jsp'>"+"Edit Profile"+"</a>");
	//out.println("<a href='Delete.jsp'>Press here to delete account</a>");
	//out.println("<a href='InnerJoin.jsp'Inner Join</a>");
	

	Statement st=null;
		Connection cn=null;
		ResultSet rs=null;
		HttpSession session1=request.getSession();
		boolean flag=false;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/futureforge","root","");
			st=cn.createStatement();
			String select="select id,username,email from register where id="+idd+"";
			//String update="update from register where id="+mid+"";
			//String delete="delete from mymaster where cId="+mid+"";
			rs=st.executeQuery(select);
			
			while(rs.next())
			{
				int id=rs.getInt("id");
				String username=rs.getString("username");
				String email=rs.getString("email");
				out.println(id+""+username+" "+email);
			}
		}
		catch(Exception e)
		{
			System.out.println("Error in Saving Records "+e.toString());
		}
%>