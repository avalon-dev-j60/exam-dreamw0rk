
package ru.avalon.java.blog.servlets;

import java.io.IOException;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.avalon.java.blog.entities.Publication;
import ru.avalon.java.blog.exceptions.ValidationException;
import ru.avalon.java.blog.helpers.RedirectHelper;
import static ru.avalon.java.blog.helpers.RedirectHelper.localRedirect;
import static ru.avalon.java.blog.helpers.Validation.require;
import static ru.avalon.java.blog.helpers.Validation.requireNonNull;
import ru.avalon.java.blog.service.PublicationService;



@WebServlet("/publication/delete")
public class PublicationDeleteServlet extends HttpServlet{
    
    private static final String JSP =
            "/WEB-INF/pages/publications/delete.jsp";
    
    @Inject
    PublicationService publicationService;
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        if (id != null) {
            try {
                long lid = Long.parseLong(id);
                Publication publication = publicationService.find(lid);
                requireNonNull(publication, "");
                request.setAttribute("publication", publication);
                request.getRequestDispatcher(JSP).forward(request, response);
            } catch (NumberFormatException | ValidationException e) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
            }
        } else {
            localRedirect(request, response, "/");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String id = request.getParameter("id");
         try {
             long lid = Long.parseLong(id);
             Publication publication = publicationService.find(lid);
             requireNonNull(publication, "");
             publicationService.delete(publication);
             localRedirect(request, response, "/");
         } catch (NumberFormatException | ValidationException e) {
             request.setAttribute("exception", e);
             doGet(request, response);
         }
    }
}
