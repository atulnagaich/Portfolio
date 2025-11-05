 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Footer -->
<footer class="footer_area" 
        style="background-color:#ffffff; color:#111; padding-top:40px; padding-bottom:30px;">
    <div class="container" style="max-width:1200px; margin:0 auto;">
        <div class="row justify-content-center text-center">
            <div class="col-lg-12">
                <div class="footer_top flex-column">

                    <!-- Logo Section -->
                    <div class="footer_logo" style="margin-bottom:18px;">
                        <a href="${pageContext.request.contextPath}/client/home" 
                           style="display:inline-block; text-decoration:none;">
                            <!-- use c:url so context path resolves correctly -->
                            <img id="siteLogo"
                                 src="<c:url value='/img/logo.png' />"
                                 alt="Logo"
                                 style="height:100%; width:100%;   display:block; margin:0 auto;"
                                 onerror="this.onerror=null;
                                          this.src='https://via.placeholder.com/150x60.png?text=Logo';" />
                        </a>
                        <h4 style="margin-top:12px; font-weight:600; color:#111;">Follow Me</h4>
                    </div>

                    <!-- Social Icons -->
                    <div class="footer_social">
                        <ul style="list-style:none; padding:0; margin:0; display:flex; 
                                   justify-content:center; align-items:center; flex-wrap:wrap;">
                            <li style="margin:0 8px; font-size:15px; color:#444;">Find me on</li>
                            <li style="margin:0 8px;">
                                <a href="https://github.com/atulnagaich" target="_blank" 
                                   style="color:#111; text-decoration:none; transition:0.2s;">
                                   <i class="fab fa-github fa-lg" style="transition:transform 0.2s;"></i>
                                </a>
                            </li>
                            <li style="margin:0 8px;">
                                <a href="https://www.linkedin.com/in/atulnagaich/" target="_blank" 
                                   style="color:#111; text-decoration:none; transition:0.2s;">
                                   <i class="fab fa-linkedin fa-lg" style="transition:transform 0.2s;"></i>
                                </a>
                            </li>
                            <li style="margin:0 8px;">
                                <a href="https://twitter.com/atulnagaich" target="_blank" 
                                   style="color:#111; text-decoration:none; transition:0.2s;">
                                   <i class="fab fa-twitter fa-lg" style="transition:transform 0.2s;"></i>
                                </a>
                            </li>
                            <li style="margin:0 8px;">
                                <a href="https://www.facebook.com/atulnagaich23" target="_blank" 
                                   style="color:#111; text-decoration:none; transition:0.2s;">
                                   <i class="fab fa-facebook fa-lg" style="transition:transform 0.2s;"></i>
                                </a>
                            </li>
                            <li style="margin:0 8px;">
                                <a href="https://www.instagram.com/atul__nagaich23" target="_blank" 
                                   style="color:#111; text-decoration:none; transition:0.2s;">
                                   <i class="fab fa-instagram fa-lg" style="transition:transform 0.2s;"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Bottom -->
        <div class="row footer_bottom justify-content-center" style="margin-top:26px;">
            <p class="col-lg-8 col-sm-12 footer-text mb-0 text-center" 
               style="margin:0 auto; font-size:14px; color:#666;">
                &copy; <script>document.write(new Date().getFullYear());</script> 
                All rights reserved | Made with 
                <i class="fa fa-heart" style="color:#e74c3c;"></i> by 
                <a href="mailto:atulnagaich@gmail.com" 
                   style="color:#0a84ff; text-decoration:none; font-weight:600;">
                   Atul Nagaich
                </a>
            </p>
        </div>
    </div>
</footer>

<!-- Font Awesome CDN (required for icons) -->
<link rel="stylesheet" 
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
 