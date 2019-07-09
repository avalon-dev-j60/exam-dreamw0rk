<%-- 
    Document   : navigation
    Created on : 29.06.2019, 14:25:54
    Author     : JAVA
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="core" tagdir="/WEB-INF/tags/core/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setBundle basename="resources.labels"/>

<nav>
    <ul>
        <li>
            <core:link location="/">
                <jsp:attribute name="title">
                    <fmt:message key="menu.home"/>
                </jsp:attribute>
            </core:link>
        </li>
        <li>
            <core:link location="/projects">
                <jsp:attribute name="title">
                    <fmt:message key="menu.projects"/>
                </jsp:attribute>
            </core:link>
        </li>
        <li class="pull-right">
            <c:choose>
                <c:when test="${not empty sessionScope.user}">
                    <core:link location="/sign-out">
                        <jsp:attribute name="title">
                            <fmt:message key="menu.sign-out"/>
                        </jsp:attribute>
                    </core:link>
                </c:when>
                <c:otherwise>
                    <core:link location="/sign-in">
                        <jsp:attribute name="title">
                            <fmt:message key="menu.sign-in"/>
                        </jsp:attribute>
                    </core:link>
                </c:otherwise>
            </c:choose>
        </li>
    </ul>
</nav>