<%-- 
    Document   : уккщк
    Created on : 29.06.2019, 15:14:44
    Author     : JAVA
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="exception"%>

<c:if test="${not empty exception}">
    <div class="box error gap-bottom gap-top">
        ${exception.message}
    </div>
</c:if>
