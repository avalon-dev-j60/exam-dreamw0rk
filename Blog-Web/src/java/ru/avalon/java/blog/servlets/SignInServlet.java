package ru.avalon.java.blog.servlets;

import java.io.*;
import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import ru.avalon.java.blog.exceptions.ValidationException;
import ru.avalon.java.blog.helpers.RedirectHelper;
import ru.avalon.java.blog.services.AuthService;

@WebServlet("/sign-in")
public class SignInServlet extends HttpServlet {
    
    private static final String JSP = 
            "/WEB-INF/pages/auth/login.jsp";

    @Inject AuthService authService;
    
    @Override
    protected void doGet(
            HttpServletRequest request, 
            HttpServletResponse response
    ) throws ServletException, IOException {
        if (authService.isSignedIn()) {
            RedirectHelper.redirectBack(request, response);
        } else {
            request .getRequestDispatcher(JSP)
                    .forward(request, response);
        }
    }

    @Override
    protected void doPost(
            HttpServletRequest request, 
            HttpServletResponse response
    ) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            authService.signIn(email, password);
            RedirectHelper.localRedirect(
                request, 
                response, 
                "/"
            );
        } catch (ValidationException e) {
            request.setAttribute("exception", e);
            doGet(request, response);
        }
    }
}
