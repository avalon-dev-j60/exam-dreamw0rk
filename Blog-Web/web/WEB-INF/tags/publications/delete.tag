<%-- 
    Document   : edit
    Created on : 06.07.2019, 11:01:31
    Author     : JAVA
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="core" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="publication" 
             type="ru.avalon.java.blog.entities.Publication"%>

<%@attribute name="action" required="true" %>

<core:error/>

<form action="${pageContext.servletContext.contextPath}${action}" 
      method="post">
    
    <c:if test="${not empty publication}">
        <input type="text"
               name="id"
               value="${publcation.id}">
    </c:if>
    
    <div class="row gap-bottom">
        <button class="pull-right">
            Save
        </button>
    </div>
    
</form>