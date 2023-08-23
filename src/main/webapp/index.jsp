
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>

	<%@include file="component/navbar.jsp"%>
	<%@include file="component/caraousal.jsp"%>


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


			<div class="col-md-4 p-4 mt-4 mb-1">

				<div class="row-md-12 p-1">
					<img alt="#" class="img-fluid" src="img/medi.jpg">
				</div>

				<div class="row-md-12 p-1">
					<img alt="#" class="img-fluid" src="img/healthy food.jpg"
						height="470px" width="470px">
				</div>




			</div>



		</div>
	</div>
	<%@include file="component/footer.jsp"%>



</body>
</html>