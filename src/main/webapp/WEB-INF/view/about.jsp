   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/png">
	<title>About Us</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/linericon/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/nice-select/css/nice-select.css">
	<!-- main css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

	<!--================ Start Header Area =================-->
	 <%@ include file="header.jsp"%>
	<!--================ End Header Area =================-->

	<!--================ Start Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-center">
					<h2>About Us</h2>
					<div class="page_link">
						<a href="${pageContext.request.contextPath}/index.jsp">Home</a>
						<a href="${pageContext.request.contextPath}/about.jsp">About</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Banner Area =================-->

	<!--================ Start About Us Area =================-->
	<section class="about_area section_gap">
		<div class="container">
			<div class="row justify-content-start align-items-center">
				<div class="col-lg-5">
					<div class="about_img">
						<img class="" src="${pageContext.request.contextPath}/img/about-us.png" alt="">
					</div>
				</div>

				<div class="offset-lg-1 col-lg-5">
					<div class="main_title text-left">
						<h2>let’s <br>Introduce about <br>myself</h2>
						<!-- ✅ Dynamic About Text -->
          <c:forEach var="intro" items="${aboutIntroList}">
            <p style="font-size: 16px; color: #555; line-height: 1.8;">
              ${intro.firstPara}
            </p>
            <p style="font-size: 16px; color: #555; line-height: 1.8;">
              ${intro.secondPara}
            </p>
          </c:forEach>
						<!-- 📄 Resume Download Button -->
          <a class="primary_btn mt-4 d-inline-block"
             href="${pageContext.request.contextPath}/client/downloadResume"
             style="padding: 10px 25px; border-radius: 30px; font-weight: 600; background: linear-gradient(90deg, #007bff, #00d4ff); color: #fff;">
            <span>Download CV</span>
          </a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End About Us Area =================-->

	<!--================ Srart Brand Area =================-->
	<section class="brand_area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="row">
						<c:forEach var="i" begin="1" end="9">
							<div class="col-lg-4 col-md-4 col-sm-6">
								<div class="single-brand-item d-table">
									<div class="d-table-cell text-center">
										<img src="${pageContext.request.contextPath}/img/brands/logo${i}.png" alt="">
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="offset-lg-2 col-lg-4 col-md-6">
					<div class="client-info">
						<div class="d-flex mb-50">
							<span class="lage">6 Month</span>
							<span class="smll">Intern</span>
						</div>
						<div class="call-now d-flex">
							<div>
								<span class="fa fa-phone"></span>
							</div>
							<div class="ml-15">
								<p>call us now</p>
								<h3>(+91)-910000000</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Brand Area =================-->

	<!--================ Start Testimonial Area =================-->
	<div class="testimonial_area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<div class="main_title">
						<h2>client say about me</h2>
						<p>Is give may shall likeness made yielding spirit a itself togeth created after sea is in beast <br>beginning signs open god you're gathering ithe</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="testi_slider owl-carousel">
					<c:forEach var="t" begin="1" end="2">
						<div class="testi_item">
							<div class="row">
								<div class="col-lg-4">
									<img src="${pageContext.request.contextPath}/img/testimonials/t${t}.jpg" alt="">
								</div>
								<div class="col-lg-8">
									<div class="testi_text">
										<h4>Client ${t}</h4>
										<p>Him, made can't called over won't there on divide there male fish beast own his day third seed sixth seas unto. Saw from</p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Testimonial Area =================-->

	<!--================Footer Area =================-->
	<!-- 	footer section -->

	<%@ include file="footer.jsp"%>
	<!--================End Footer Area =================-->

	<!-- JS Files -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/stellar.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/isotope/isotope-min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.ajaxchimp.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/mail-script.js"></script>
	<script src="${pageContext.request.contextPath}/js/gmaps.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/theme.js"></script>
</body>

</html>
 