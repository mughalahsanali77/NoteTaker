<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_css_js.jsp"%>
<title>Add Note</title>
</head>
<body>

	<div class="container-fluid p-0 m-0">
	<%@include file="navbar.jsp"%>
	<br>
	<h1>Please Fill Your Note Detail</h1>
	
	
	<!--this is add form  -->
	<form action="SaveNoteServlet" method="post">
  
   <div class="form-group">
    <label for="title">Note Title</label>
    <input name="title" required type="text" 
    class="form-control" 
    id="title" aria-describedby="emailHelp" placeholder="Enter here">
  </div>
  
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" required id="content" 
    placeholder="enter your content here"
    class="form-control"
    style="height:300px;"
    ></textarea>
     </div>
  
  
  <div class=" container text-center ">
  <button type="submit" class="btn btn-primary">Add</button>
</div>
</form>
	
	
	</div>
</body>
</html>