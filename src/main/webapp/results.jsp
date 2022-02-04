<%@page import="java.util.List"%>
<%@page import="webscrapper.WebScrapper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String url = (String) request.getSession().getAttribute("url");

    List<String> sources = new WebScrapper().getAllImgs(url);

    for (String source : sources) {

        source = source.contains("https://") ? source : source != null ? url + "/" + source : "";
        System.out.println(source);
%>


<div class="image-wrapper">
    <div class="image">
        <img src="<%=source%>" alt="alt"/>
    </div>
    <div class="details">
        <a href="<%=source %>" title="See this Image" target="_blank">
            <i class="fas fa-external-link-alt"></i>
        </a>
        <span class="imageName">Hello</span>
    </div>
</div>


<% }
    sources.clear();
%>