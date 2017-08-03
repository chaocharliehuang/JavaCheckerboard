<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Draw a checkerboard</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/checkerboardstyle.css">
</head>
<body>
	<% int width, height; %>
	<% String evenColor, oddColor; %>

	<% if (request.getParameter("width") != null) { %>
		<% width = Integer.parseInt(request.getParameter("width")); %>
	<% } else { %>
		<% width = 1; %>
	<% } %>
	
	<% if (request.getParameter("height") != null) { %>
		<% height = Integer.parseInt(request.getParameter("height")); %>
	<% } else { %>
		<% height = 1; %>
	<% } %>
	
	<% for (int j = 0; j < height; j++) { %>
		<% if (j%2 == 0) { %>
			<% evenColor = "color1";  %>
			<% oddColor = "color2";  %>
		<% } else { %>
			<% evenColor = "color2";  %>
			<% oddColor = "color1";  %>
		<% } %>
	
		<div>
			<% for (int i = 0; i < width; i++) { %>
				<% if (i%2 == 0) { %>
					<div class="square <%=evenColor%>"></div>
				<% } else { %>
					<div class="square <%=oddColor%>"></div>
				<% } %>
			<% } %>
		</div>
	<% } %>
</body>
</html>