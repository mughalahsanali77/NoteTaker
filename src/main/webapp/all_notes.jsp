<%@page import="org.hibernate.query.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes : Note Taker</title>
<%@ include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container-fluid p:0 m:0">
		<%@ include file="navbar.jsp"%>
		</div>
		<br>
		<h1 class="text-uppercase">All Notes :</h1>

		<div class="row">
			<div class="col-12">


				<%
				Session s = FactoryProvider.getFactory().openSession();

				List<Note> list = s.createQuery("FROM Note", Note.class).list();

				for (Note note : list) {
				%>

				<div class="card mt-3"  >
					<img class="card-img-top  m-4 mx-auto" style="max-width:100px" src="img/note.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text"> <%= note.getContent() %> </p>
						
						<p  ><b class="text-primary"><%=note.getAddedDate() %></b></p>
						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
							<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Edit</a>
					
						</div> 
				</div>
				<%
				}

				s.close();
				%>


			</div>

		</div>

	</div>

</body>
</html>