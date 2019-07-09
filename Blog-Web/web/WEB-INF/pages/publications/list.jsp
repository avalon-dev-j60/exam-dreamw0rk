<%-- 
    Document   : list
    Created on : 06.07.2019, 12:13:10
    Author     : JAVA
--%>

<%@page contentType="text/html" 
        pageEncoding="UTF-8"%>

<%@taglib prefix="c" 
          uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="core" 
          tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="publications" 
          tagdir="/WEB-INF/tags/publications/" %>

<core:layout title="Blog">
    
    <c:if test="${not empty sessionScope.user}">
        <core:link location="/publication/create"
                   title="Create publication"
                   classes="button"/>
    </c:if>
    
    <publications:list publications="${publications}"/>
    
</core:layout>