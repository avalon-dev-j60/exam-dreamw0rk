<%-- 
    Document   : projects
    Created on : 01.07.2019, 20:17:08
    Author     : JAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="core" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<core:layout title="Projects">
    
    <c:choose>
        <c:when test="${not empty projects}">
            
            <c:forEach items="${projects}" var="item">

                <div class="row">
                    ${item}
                    <img src="${pageContext.servletContext.contextPath}/img/link-symbol.png" width="10 em" height="10 em"/>
                </div>

            </c:forEach>
            <img src="${pageContext.servletContext.contextPath}/img/fun.png" border="2" />
        </c:when>
        <c:otherwise>
            <p>
                There are no projects currently 
                under development ...
            </p>
        </c:otherwise>
    </c:choose>
</core:layout>
