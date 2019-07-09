<%-- 
    Document   : list
    Created on : 06.07.2019, 12:13:10
    Author     : JAVA
--%>

<%@page contentType="text/html" 
        pageEncoding="UTF-8"%>

<%@taglib prefix="core" 
          tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="publications" 
          tagdir="/WEB-INF/tags/publications/" %>

<core:layout title="${publication.title}">     
    <publications:view publication="${publication}"/>
    
    <div class=" row pull-right">
    <c:if test="${sessionScope.user == publication.author.email}">
        <core:link location="/publication/edit?id=${publication.id}" title="Edit publication" classes = "box green"/>
        <core:link location="/publication/delete?id=${publication.id}" title="Delete publication" classes = "box green"/>
    </c:if>          
    </div>
</core:layout>