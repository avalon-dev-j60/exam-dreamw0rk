<%-- 
    Document   : link
    Created on : 29.06.2019, 14:28:12
    Author     : JAVA
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="location" required="true"%>

<%@attribute name="title" required="true" %>

<%@attribute name="classes" %>

<a href="${pageContext.servletContext.contextPath}${location}"
   <c:if test="${not empty classes}">
       class="${classes}"
   </c:if>
   >
    ${title}
</a>