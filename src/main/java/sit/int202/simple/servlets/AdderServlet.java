package sit.int202.simple.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AdderServlet", value = "/Adder")
public class AdderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request,response);
    }

    private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String num1 = request.getParameter("x");
        String num2 = request.getParameter("y");
        double result = Double.valueOf(num1)+Double.valueOf(num2);
        request.setAttribute("x",num1);
        request.setAttribute("y",num2);
        request.setAttribute("result",result);
        request.getRequestDispatcher("/adder.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request,response);
    }
}
