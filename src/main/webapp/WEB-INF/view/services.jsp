
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Services</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/img/favicon.png"
	type="image/png">
<!-- CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/linericon/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

	<%@ include file="header.jsp"%>

	<!-- Banner Area -->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-center">
					<h2>Services</h2>
					<div class="page_link">
						<a href="${pageContext.request.contextPath}/index.jsp">Home</a> <a
							href="#">Services</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Features Area -->
	<section class="features_area section_gap_top">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<div class="main_title">
						<h2>service offers</h2>
						<p>
							Is give may shall likeness made yielding spirit a itself togeth
							created after sea <br> is in beast beginning signs open god
							you're gathering ithe
						</p>
					</div>
				</div>
			</div>
			<div class="row feature_inner">

				<c:forEach var="service" items="${listofService}">
					<div class="col-lg-3 col-md-6">
						<div class="feature_item">
							<img style="width: 100px; height: auto;"
								src="${pageContext.request.contextPath}/img/services/${service.filename}"
								alt="Invalid format are use..photo">
							<h4>${service.title}</h4>
							<p>${service.description}</p>
						</div>
					</div>
				</c:forEach>

				<%--  <div class="col-lg-3 col-md-6">
                    <div class="feature_item">
                        <img src="${pageContext.request.contextPath}/img/services/s2.png" alt="">
                        <h4>UI/ux design</h4>
                        <p>Creeping for female light years that lesser can't evening heaven isn't bearing tree</p>
                    </div>
                </div>
                
                
                
                <div class="col-lg-3 col-md-6">
                    <div class="feature_item">
                        <img src="${pageContext.request.contextPath}/img/services/s3.png" alt="">
                        <h4>Web design</h4>
                        <p>Creeping for female light years that lesser can't evening heaven isn't bearing tree</p>
                    </div>
                </div>
                
                
                <div class="col-lg-3 col-md-6">
                    <div class="feature_item">
                        <img src="${pageContext.request.contextPath}/img/services/s4.png" alt="">
                        <h4>SEO optimize</h4>
                        <p>Creeping for female light years that lesser can't evening heaven isn't bearing tree</p>
                    </div>
                </div> --%>


			</div>
		</div>
	</section>

	<!-- Testimonial Area -->
	<div class="testimonial_area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<div class="main_title">
						<h2>Teacher say about me</h2>
						<p>“They consistently demonstrate dedication, curiosity, and a
							strong work ethic. Their enthusiasm for learning and commitment
							to excellence make them truly stand out.”</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="testi_slider owl-carousel">
					<!-- Repeat testimonial items -->
					<div class="testi_item">
						<div class="row">
							<div class="col-lg-4">
								<img
									src="${pageContext.request.contextPath}/img/testimonials/t1.jpg"
									alt="">
							</div>
							<div class="col-lg-8">
								<div class="testi_text">
									<h4>Saif Sir</h4>
									<p>"He is a dedicated and enthusiastic learner, always
										eager to take on challenges and excel in his work. His
										commitment, creativity, and positive attitude make him stand
										out."</p>

								</div>
							</div>
						</div>
					</div>
					<div class="testi_item">
						<div class="row">
							<div class="col-lg-4">
								<img
									src="${pageContext.request.contextPath}/img/testimonials/t2.jpg"
									alt="">
							</div>
							<div class="col-lg-8">
								<div class="testi_text">
									<h4>Remio Sir</h4>
									<p>"He is hardworking, disciplined, and always eager to
										learn. His dedication and positive attitude make him a
										valuable student and a joy to teach."</p>

								</div>
							</div>
						</div>
					</div>
					<!-- Add more testimonial items as needed -->
				</div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

	<!-- JS -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/stellar.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendors/isotope/isotope-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.ajaxchimp.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/mail-script.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="${pageContext.request.contextPath}/js/gmaps.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/theme.js"></script>

</body>
</html>
