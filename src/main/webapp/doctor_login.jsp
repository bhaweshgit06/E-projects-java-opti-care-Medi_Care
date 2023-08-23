<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor login page</title>
<%@include file= "component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<br>
	<br>
	<br>
	<div class="  p-3 m-1">
		<div class=" row">
			<div class=" col-md-4 offset-md-4 ">
				<div class=" card paint-card p-4 md-4">
					<div class=" card-body ">
						<p class=" fs-4 text-center"> Doctor Login </p>
						

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-6">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
					
						
						<form action="doctorLogin" method="post">
							<div class=" mb-3">
								<label class=" form-label">Email address</label> <input required
									name="email" type="email" class=" form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn text-white col-md-12" style= "background-color: indigo;">Login</button>
						</form>
						
					
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>