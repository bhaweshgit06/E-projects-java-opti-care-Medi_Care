
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${userObj.fullName }</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<c:if test="${not empty userObj }">
								<nav><%@include file="navbar.jsp"%></nav>
	
	
	<c:if test="${ empty userObj }">
		<c:redirect url="../user_login.jsp"></c:redirect>
	</c:if>
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../img/hospital3.jpg" class="d-block w-100 " alt="" height ="620px">
    </div>
    <div class="carousel-item ">
      <img src="../img/hospital2.jpg" class="d-block w-100 " alt="" height ="620px">
    </div>
    <div class="carousel-item">
      <img src="../img/hospital.jpg" class="d-block w-100 " alt="" height ="620px"> 
    </div>
    <div class="carousel-item">
      <img src="../img/hospital1.jpg" class="d-block w-100 " alt="" height ="620px">
    </div>
  
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
	

	<div class="container p-3">
		<p class="text-center fs-2 ">Key Features of Medi Care</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Prioritizing patient and staff safety, our hospital
									management system employs robust security measures, data
									encryption, and access controls to ensure a secure healthcare
									environment, instilling confidence in every interaction.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Creating an optimal healing environment, our hospital
									management app orchestrates seamless patient care by
									integrating departments, automating processes, and facilitating
									real-time communication, fostering a harmonious ecosystem for
									healthcare excellence.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Web Facility</p>
								<p>Accessible anytime, anywhere, our web-based hospital
									management application offers a user-friendly interface for
									administrators, clinicians, and patients. Effortlessly manage
									appointments, patient records, billing, and more, enhancing
									healthcare delivery with digital convenience.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Empowering medical progress, this medi cure management
									platform supports seamless collaboration between clinicians and
									researchers, facilitating data sharing, analysis, and
									streamlined workflows to drive innovative discoveries and
									advancements in patient care</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	<div class="col-md-4">

				<div class="row-md-12 p-1">
					<img alt="#" class="img-fluid" src="../img/syr.jpg">
				</div>

				<div class="row-md-12 p-1">
					<img alt="#" class="img-fluid" src="../img/scope.jpg"
						>
				</div>




			</div>
			

		</div>
	</div>
	<%@include file = "../component/footer.jsp" %>
								
							</c:if>



</body>
</html>