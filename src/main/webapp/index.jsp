<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Email</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
	<%
	if (request.getAttribute("message") != null) {
	%>
	<div class="alert alert-primary" role="alert">
		<%=request.getAttribute("message")%>
	</div>
	<%
	}
	%>
	<div class="container pb-5">
		<h1 class="text-primary mb-5">Send Email</h1>
		<form action="send" method="post">
			<div class="row card-shadow mb-4">
				<div class="col-4">
					<label class="font-weight-bold text-primary">Email To :</label>
				</div>
				<div class="col-8">
					<input type="text" class="form-control" name="email">
				</div>
			</div>
			<div class="row card-shadow mb-4">
				<div class="col-4">
					<label class="font-weight-bold text-primary">Subject : </label>
				</div>
				<div class="col-8">
					<input type="text" class="form-control" name="subject">
				</div>
			</div>
			<div class="row card-shadow mb-4">
				<div class="col-4">
					<label class="font-weight-bold text-primary">Message : </label>
				</div>
				<div class="col-8">
					<textarea class="form-control" rows="10" cols="39" name="message"></textarea>
				</div>
			</div>
			<div class="row card-shadow mb-4">
				<div class="col-4"></div>
				<div class="col-8">
					<button type="submit" class="form-control btn btn-primary">Send</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>