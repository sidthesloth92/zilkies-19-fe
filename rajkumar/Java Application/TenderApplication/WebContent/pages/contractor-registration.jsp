<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href=${pageContext.request.contextPath}/css/main.css>
<link rel="stylesheet"
	href=${pageContext.request.contextPath}/css/normalize.css>
<link rel="stylesheet"
	href=${pageContext.request.contextPath}/css/grid.css>
<link rel="stylesheet"
	href=${pageContext.request.contextPath}/css/utility.css>
<link rel="stylesheet"
	href=${pageContext.request.contextPath}/css/contractor-registration.css>
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:800"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
</head>

<body>
	<!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- nav-bar -->
	<div class="Navbar">
		<div class="Navbar__Link Navbar__Link-brand">
			<a href="../index.html"><i class="fas fa-home"></i></a>
		</div>
		<div class="Navbar__Link Navbar__Link-toggle">
			<i class="fas fa-bars"></i>
		</div>
		<nav class="Navbar__Items">
			<div class="Navbar__Link">All Projects</div>
			<div class="Navbar__Link">View Contractors</div>
			<div class="dropdown-container">
				<li class="nav__item nav__right-item dropdown-outer"><a
					href="#">Register <i class="fa fa-caret-down"></i></a></li>
				<!-- Drop Down -->
				<div class="dropdown-content">
					<a href="./pages/user-registration.html">Register User</a> <a
						href="./pages/contractor-registration.html">Register
						Contractor</a>
				</div>
			</div>
		</nav>
		<nav class="Navbar__Items Navbar__Items--right">

			<div class="Navbar__Link">Login</div>

		</nav>
	</div>
	<!-- Navigation Bar Ending -->
	<%  
		
	ArrayList<String> list = (ArrayList<String>) request.getAttribute("errorList"); 
	System.out.println(request.getAttribute("errorList"));	
%>
	<c:set var="list" value="${errorList}" scope="session" />

	<div class="content-wrapper">
		<div class="row">
			<div class="col-lg-7 col-md-5 col-sm-12 contractor-registration">
				<h3>Register to apply to available Tender projects !</h3>
				<hr class="contractor-registration__splitter">
			</div>
			<div class="col-lg-5 col-md-7 col-sm-12">
				<c:out value="${empty list}" escapeXml="false" />
				<c:choose>
					<c:when test="${empty list}">
						<div class="form-section">
							<form action="/TenderApplication/Registration" method="POST" id="registration-section">
								<!-- <label for="name">Name</label> -->
								<div class="form-section__name">
									<input class="form__input" type="text" placeholder="First Name"
										name="first-name"> <input class="form__input"
										type="text" placeholder="Last Name" name="last-name">
								</div>
								<input class="form__input" type="text"
									placeholder="Enter a unique username" name="username"
									id="username">
								<p id="outputDiv"></p>
								<input class="form__input" type="password"
									placeholder="Password" name="password">
								<!-- <label for="">Confirm Password Again</label> -->
								<input class="form__input" type="password"
									placeholder="Retype Password" name="re-password"> <input
									class="form__input" type="text" placeholder="Email"
									name="email"> <input class="form__input" type="text"
									placeholder="Company Name" name="company-name"> <input
									class="form__input" type="text" placeholder="Annual Revenue"
									name="annual-revenue"> <input class="form__input"
									type="text" placeholder="Number of Client"
									name="number-of-client"> <input class="form__input"
									type="text" placeholder="Location"> <input
									type="hidden" value="CONTRACTOR" name="user_type">
								<button type="submit" class="form__button">Register</button>
							</form>
						</div>
					</c:when>
					<c:otherwise>
						<div class="form-section">
							<form action="/TenderApplication/Registration" method="POST" id="registration-section">
								<div class="form-section__name">
									<input class="form__input" type="text" placeholder="First Name"
										name="first-name">
									<p><%= list.get(0) %></p>
									<input class="form__input" type="text" placeholder="Last Name"
										name="last-name">
									<p><%= list.get(1) %></p>
								</div>
								<input class="form__input" type="text"
									placeholder="Enter a unique username" name="username"
									id="username">
								<p><%= list.get(2) %></p>
								<p id="outputDiv"></p>
								<input class="form__input" type="password"
									placeholder="Password" name="password"> <input
									class="form__input" type="password"
									placeholder="Retype Password" name="re-password"> <input
									class="form__input" type="text" placeholder="Email"
									name="email">
								<p><%= list.get(3) %></p>
								<input class="form__input" type="text"
									placeholder="Company Name" name="company-name">
								<p><%= list.get(2) %></p>
								<input class="form__input" type="text"
									placeholder="Annual Revenue" name="annual-revenue">
								<p><%= list.get(6) %></p>
								<input class="form__input" type="text"
									placeholder="Number of Client" name="number-of-client">
								<p><%= list.get(5) %></p>
								<input class="form__input" type="text" placeholder="Location">
								<p><%= list.get(4) %></p>
								<input type="hidden" value="CONTRACTOR" name="user_type">
								<button type="submit" class="form__button">Register</button>
							</form>
						</div>
					</c:otherwise>
				</c:choose>



			</div>
		</div>
		<!-- Content Ending -->
		<!-- Footer Starting -->
		<div class="row footer-section">
			<div class="col-lg-4"></div>
			<div class="col-lg-4 footer__copyright">copyright &#169;
				zilker.io</div>
			<div class="col-lg-4">
				<i class="fab fa-facebook fa-2x footer-icon"></i> <i
					class="fab fa-instagram fa-2x footer-icon"></i> <i
					class="fab fa-twitter fa-2x footer-icon"></i>
			</div>
		</div>
		<!-- Footer Ending -->
	</div>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
		type="text/javascript"></script>
	<script src=${pageContext.request.contextPath}/js/main.js async defer></script>
	<script src=${pageContext.request.contextPath}/js/username-exists.js></script>
	<script src=${pageContext.request.contextPath}/js/validation.js></script>
</body>

</html>