<%@page import="java.util.List"%>
<%@page import="webscrapper.WebScrapper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String url = (String) request.getSession().getAttribute("url");

    List<String> sources = new WebScrapper().getAllImgs(url);

    if (sources.size() > 0) {

        for (String source : sources) {

            source = source.contains("https://") ? source : source != null ? url + "/" + source : "";
            String name = source.split("/")[source.split("/").length - 1];
%>


<div class="image-wrapper">
    <div class="image">
        <img src="<%=source%>" alt="alt"/>
    </div>
    <div class="details">
        <a href="<%=source%>" title="See this Image" target="_blank">
            <i class="fas fa-external-link-alt"></i>
        </a>

        <span class="imageName" title="<%=name.split("\\.")[0]%>"><%=name.split("\\.")[0]%></span>
    </div>
</div>


<%
    }
    sources.clear();
} else {
%>

<div class="error">
    <h3>Could Not establish connection with</h3> <a href="<%=url%>" target="_blank"> <%=url%> </a>
</div>

<%
    }
%>