<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_css_js.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Edit Your Note</h1>
		<br>
	</div>
	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, noteId);
	%>
	<form action="UpdateServlet" method="post">
<input value="<%= note.getId() %>" name="noteId" type="hidden" />
		<div class="form-group">
			<label for="title">Note Title</label> 
			<input name="title" required
			type="text" 
			class="form-control" id="title"
				aria-describedby="emailHelp" 
				placeholder="Enter here"
				value="<%=note.getTitle()%>"/>
		</div>

		<div class="form-group">
			<label for="content">Note Content</label>
			<textarea name="content" required id="content"
				placeholder="enter your content here" class="form-control"
				style="height: 300px;" ><%=note.getContent() %></textarea>
		</div>


		<div class=" container text-center ">
			<button type="submit" class="btn btn-success">Save Note</button>
		</div>
	</form>

</body>
</html>