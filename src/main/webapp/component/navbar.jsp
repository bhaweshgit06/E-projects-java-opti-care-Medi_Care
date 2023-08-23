
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg ms-auto navbar-dark fixed-top "
	style="background: linear-gradient(47deg, #9b7fd6 0, #9b7fd6 0, #6e45a8 24%, #5f4b91 87%, #553e82 100%); height: 70px; padding: 2px">
	<div class="container-fluid">

		<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-hospital"></i> Medi Care</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="admin_login.jsp">Admin</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor_login.jsp">Doctor</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_login.jsp">User</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_login.jsp">Appointment</a></li>
			</ul>

		</div>

	</div>
</nav>