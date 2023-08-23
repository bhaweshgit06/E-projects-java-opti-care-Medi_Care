<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcss.jsp"%>
<style>
.site-footer {
  background: linear-gradient(47deg, #9b7fd6 0, #9b7fd6 0, #6e45a8 24%, #5f4b91 87%, #553e82 100%);
  height: 80px;
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
}

.footer-content {
  display: flex;
  align-items: center;
}

.footer-links a {
  color: white;
  margin-right: 10%;
  padding-right: 20px;
}

.footer-links a i{
  font-size: 2em;
  width: 20px;
  height: 20px;
  margin-right: 5px;
}


</style>
</head>
<body>
<footer class=" bottom site-footer">
            <div class="footer-content">
              <div class="footer-links">
                <a href="https://github.com/bhaweshgit06">
                    <i class="fa-brands fa-github" id="img1"></i>
                </a>
                
              </div>
              <div class="footer-credits" >
                Created by: Bhawesh Agrawal
              </div>
              
            </div>
          </footer>
</body>
</html>