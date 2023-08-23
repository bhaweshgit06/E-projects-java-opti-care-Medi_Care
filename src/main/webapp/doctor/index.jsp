<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doc Home</title>
<%@include file= "../component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.colorM{
background-color :  !important;
color : active !important;
}
</style>
</head>
<body>

<c:if test="${empty DoctorObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>

<%@include file="navbar.jsp" %>

<div class="container p-4 mt-5">
		<p class="text-center fs-3">${DoctorObj.fullName }'s Dashboard</p>
<div class="row p-4 mr-1">
			<div class="col-md-6 p-2">
			<% Doctor d = (Doctor) session.getAttribute("DoctorObj");
			DoctorDao dao = new DoctorDao(DBConnect.getConn()); %>
				<div class="card paint-card ">
					<div class=" card-body text-center text-white" style = "background-color : indigo">
						<i class="fa-solid fa-user-nurse fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor <br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>



			<div class="col-md-6 p-2">
			<% DoctorDao dao1 = new DoctorDao(DBConnect.getConn()); %>
				<div class="card paint-card">
					<div class="card-body text-center text-white" style = "background-color : indigo">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							Appointment <br><%=dao1.countAppointmentByDoctorId(d.getId())%>
						</p>
					</div>
				</div>
			</div>
			</div>
			</div>
</body>
</html>