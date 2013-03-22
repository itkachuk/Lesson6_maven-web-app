package com.lohika.itkachuk.javatc.lesson6.servlets;

import com.lohika.itkachuk.javatc.lesson6.beans.TextObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: itkachuk
 * Date: 3/9/13 5:54 PM
 */
public class TextProcessingServlet extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TextObject savedText = new TextObject(request.getParameter("textArea"));

        getServletContext().setAttribute("savedText", savedText);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/enterText.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String textFilter = request.getParameter("textArea");

        TextObject savedText = (TextObject) getServletContext().getAttribute("savedText");
        TextObject filteredText;
        if (savedText.getText().contains(textFilter)) {
            filteredText = savedText;
        } else {
            filteredText = new TextObject("No matches found");
        }
        request.setAttribute("filteredText", filteredText);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/filterText.jsp");
        dispatcher.forward(request, response);
    }
}
