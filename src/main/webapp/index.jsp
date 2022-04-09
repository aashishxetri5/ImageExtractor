<%-- 
    Document   : index
    Created on : Feb 3, 2022, 10:30:49 PM
    Author     : Aashish Katwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="google-site-verification" content="ZB-Bb_WZOYS3u3CSRZQ-QNfLYszvbvCnD29vNrqVzfY" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Extract Image</title>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/Imgs/Logo.png" type="image/x-icon" />
        <link rel="stylesheet" href="CSS/style.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.1.1/css/all.min.css" integrity="sha512-ioRJH7yXnyX+7fXTQEKPULWkMn3CqMcapK0NNtCN8q//sW7ZeVFcbMJ9RvX99TwDg6P8rAH2IqUSt2TLab4Xmw==" crossorigin="anonymous"/>

    </head>
    <body>

        <!--Navigation bar-->
        <header>
            <div class="nav-wrapper">
                <nav class="left-nav">
                    <ul>
                        <li>
                            <img class="logo" src="Imgs/Logo.png" alt="alt"/>
                        </li>
                        <li>
                            <span>Retrieve Image</span>
                        </li>
                    </ul>
                </nav>
                <nav class="right-nav">
                    <ul>
                        <li><a href="/"> Home </a></li>
                        <li>
                            <a href="https://github.com/aashishxetri5/ImageExtractor" target="_blank">
                                <button>
                                    Github <i class="fas fa-arrow-circle-right"></i> 
                                </button>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>

        <!--main section-->
        <main class="main">
            <div class="main-wrapper">
                <div class="form-container">
                    <h1 class="title-text">Image Extractor</h1>
                    <p class="leading-txt">Extract all the images from any website and webpages</p>
                    <form action="scrape" method="POST">
                        <div class="input-fields">
                            <label for="url-field">Url of Website</label>
                            <input class="url-input" type="url" id="url-field" name="scrapeUrl" placeholder="Eg.: https://itsnp.org/" required/>
                        </div>
                        <input type="submit" name="scrapeThisUrl" value="Fetch!" title="Fetch"/>
                    </form>
                    <p style="font-size: .8rem; opacity: 0.4;line-height: 2rem;">Get all the images from the site.</p>
                </div>
                <div class="showcase">
                    <img title="Image by Sachit Yadav" class="showcase-img" src="Imgs/img2.png" alt="alt"/>
                </div>
            </div>
        </main>

        <!--Show scrapped images-->
        <section class="result-section">
            <%
                if (request.getSession().getAttribute("url") != null) {
            %>
            <h1 class="section-title">RESULT</h1>
            <div class="show-result">
                <%@include file="results.jsp" %>
            </div>
            <% }
                request.getSession().removeAttribute("url");
            %>
        </section>


        <section class="howitworks">
            <div class="detail-process">
                <h1 class="section-title">How extraction is achieved</h1>
                <div class="timeline">
                    <div class="block">
                        <h4>Step 1</h4>
                        <p>The url entered by the user is passed to the backend and checked if its valid.</p>
                    </div>

                    <div class="block">
                        <h4>Step 2</h4>
                        <p>If the URL is found to be valid, its connected through the code.</p>
                    </div>

                    <div class="block">
                        <h4>Step 3</h4>
                        <p>
                            Then, the src of all the image tag which contains src attribute are fetched. 
                            These are stored in a list only if an image has one of the following extension: .jpg, .png, .gif or .svg. 
                            which is returned to the front-end.
                        </p>
                    </div>

                    <div class="block">
                        <h4>Step 4</h4>
                        <p>After that this list is returned to the front-end which extracts each url of image from the list and displays the image.</p>
                    </div>
                </div>
            </div>
        </section>

        <footer>
            <div class="f-wrapper">
                <a class="footer-left">
                    <img class="footer-img" src="https://avatars.githubusercontent.com/u/43494041" alt="Image"/>
                    <span class="footer-text"> Image Extractor <span class="myname"> <span class="v-bar">|</span> Aashish Katwal</span> </span>
                </a>
                <span>
                    <a href="https://www.facebook.com/AashishXetri2002/" target="_blank" class="social-icons" title="Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="https://www.instagram.com/aashish_xetri/" target="_blank" class="social-icons" title="Instagram">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="https://www.linkedin.com/in/aashish-katwal-076076175/" target="_blank" class="social-icons" title="Linked In">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </span>
            </div>
        </footer>
    </body>
</html>
