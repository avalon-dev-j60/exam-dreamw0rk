<%-- 
    Document   : create
    Created on : 06.07.2019, 12:25:12
    Author     : JAVA
--%>

<%@page contentType="text/html" 
        pageEncoding="UTF-8"%>

<%@taglib prefix="core"
          tagdir="/WEB-INF/tags/core/"%>

<%@taglib prefix="publications"
          tagdir="/WEB-INF/tags/publications/"%>

<core:layout title="Publication Delete">
    
    <h2>Publication delete</h2>
    
    <publications:delete publication="${publication}"
                       action="/publication/delete"/>
    
</core:layout>