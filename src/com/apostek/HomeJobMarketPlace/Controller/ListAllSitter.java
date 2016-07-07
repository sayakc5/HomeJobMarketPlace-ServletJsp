package com.apostek.HomeJobMarketPlace.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apostek.HomeJobMarketPlace.service.ServiceLayer;
import com.apostek.HomeJobMarketPlace.service.ServiceLayerImpl;

/**
 * Servlet implementation class ListAllSitter
 */
@WebServlet("/ListAllSitter")
public class ListAllSitter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListAllSitter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServiceLayer servicelayer=new ServiceLayerImpl();
		try {
			request.setAttribute("listAllSitters", servicelayer.getSittersService());
			request.getRequestDispatcher("/WEB-INF/pages/DisplaySitter.jsp").forward(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
