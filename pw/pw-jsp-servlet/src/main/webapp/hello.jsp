<!DOCTYPE html>
<html>
	<head>
		<title>PW - JSP e Servlet - Hello JSP</title>
		<meta charset="utf-8">
		<!-- CSS do Bootstrap. -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- CSS da aplica��o. -->
		<link rel="stylesheet" type="text/css" href="css/pw-jsp-servlet.css">
  </head>
	<body>
		<h1>Hello JSP</h1>
		<p>Aqui � HTML</p>
		<!-- Scriptlet -->
		<p><%
			out.print("Aqui � Java");
		%></p>
		<p><%
			out.print("Agora �: " + new java.util.Date());
		%></p>
	</body>
</html>