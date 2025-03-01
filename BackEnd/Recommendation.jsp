<%@ page import="java.sql.*" %>

<%
String email = (String) session.getAttribute("email");
String recommendedCourses = "";

try {
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/futureforge", "root", "password");
    PreparedStatement stmt = conn.prepareStatement("SELECT recommended_courses FROM user_profile WHERE email=?");
    stmt.setString(1, email);
    ResultSet rs = stmt.executeQuery();
    if (rs.next()) {
        recommendedCourses = rs.getString("recommended_courses");
    }
} catch (SQLException e) {
    e.printStackTrace();
}
%>

<h3>Your Recommended Courses:</h3>
<%
    for (String course : recommendedCourses.split(", ")) {
%>
    <li><%= course %></li>
<%
    }
%>
