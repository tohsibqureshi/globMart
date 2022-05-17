<!DOCTYPE html>

<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>${title}</title>
<script>
	window.menu = '${title}';
</script>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/myapp.css" rel="stylesheet">
<link href="css/bootstrap.readable.theam.css" rel="stylesheet">
<!-- Add custom CSS here -->
<link href="css/shop-homepage.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<%@include file="./shared/nav.jsp"%>
		<div class="content">
			<c:if test="${userClickHome==true}">
				<%@include file="home.jsp"%>
			</c:if>
			
			<c:if test="${userClickAllProducts==true}">
				<%@include file="listproducts1.jsp"%>
			</c:if>
			
			<c:if test="${userClickAbout==true}">
				<%@include file="about.jsp"%>
			</c:if>
			<c:if test="${userClickContact==true}">
				<%@include file="contact.jsp"%>
			</c:if>
			<!-- /.container -->
			

			<c:if test="${userClickAdmin==true}">
				<%@include file="admin.jsp"%>
			</c:if>
			
		</div>
		<!-- /.container -->
		<%@include file="./shared/footer.jsp"%>


		<!-- /.container -->

		<!-- JavaScript -->
		<script src="js/jquery-1.10.2.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/myapp.js"></script>
	</div>
</body>

</html>
