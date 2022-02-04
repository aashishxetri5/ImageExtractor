<%-- 
    Document   : index
    Created on : Feb 3, 2022, 10:30:49 PM
    Author     : Aashish Katwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Extract Image</title>
        <link rel="stylesheet" href="CSS/style.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.1.1/css/all.min.css" integrity="sha512-ioRJH7yXnyX+7fXTQEKPULWkMn3CqMcapK0NNtCN8q//sW7ZeVFcbMJ9RvX99TwDg6P8rAH2IqUSt2TLab4Xmw==" crossorigin="anonymous"/>
        <!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>-->
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
                        <li class="">
                            <span>Retrieve Image</span>
                        </li>
                    </ul>
                </nav>
                <nav class="right-nav">
                    <ul>
                        <li><a href="#"> Home </a></li>
                        <li>
                            <a href="#">
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
                        <input type="submit" name="scrapeThisUrl" value="Scrape!"/>
                    </form>
                </div>
                <div class="showcase-img">
                    <img title="Image by Sachit Yadav" class="showcase" src="Imgs/img2.png" alt="alt"/>
                </div>
            </div>
        </main>

        <!--Show scrapped images-->
        <section class="result-section">
            <%
                if (request.getSession().getAttribute("url") != null) {
            %>
            <h1 class="result-title">RESULT</h1>
            <div class="show-result">
                <%@include file="results.jsp" %>
            </div>
            <% }
                request.getSession().removeAttribute("url");
            %>
        </section>


        <section>
            <div class="detail-process">


            </div>
        </section>

        <footer>
            <div class="f-wrapper">
                <a class="footer-left" href="https://www.facebook.com/AashishXetri2002/">
                    <img class="footer-img" src="https://bit.ly/3oo4xhX" alt="Image"/>
                    <span class="footer-text"> Pic Extractor <span class="myname"> <span class="v-bar">|</span> Aashish Katwal</span> </span>
                </a>
                <span>
                    <a href="#" class="social-icons">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-icons">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="#" class="social-icons">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </span>
            </div>
        </footer>
    </body>
</html>
