<%-- 
    Document   : view
    Created on : 06.07.2019, 11:19:13
    Author     : JAVA
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%@attribute name="publication"
             type="ru.avalon.java.blog.entities.Publication"
             required="true"%>

<h2>${publication.title}</h2>

${publication.content}

