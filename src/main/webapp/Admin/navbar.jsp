<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg fixed-top navbar-dark "
	style="background: linear-gradient(47deg, #9b7fd6 0, #9b7fd6 0, #6e45a8 24%, #5f4b91 87%, #553e82 100%); height: 70px; padding: 2px">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-solid fa-hospital"></i> </i> Medi Care</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link active"
					href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="doctor.jsp">Add Doctor</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="viewDoctor.jsp">View Doctor</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="patient.jsp">Patient</a></li>
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu " aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>