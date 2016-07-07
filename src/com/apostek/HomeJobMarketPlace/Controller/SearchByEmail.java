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
 * Servlet implementation class SearchSeeker
 */
@WebServlet("/SearchByEmail")
public class SearchByEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchByEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		request.getRequestDispatcher("/WEB-INF/pages/SearchByEmail.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServiceLayer servicelayer=new ServiceLayerImpl();
		try {
			if(servicelayer.isSeekerService(Integer.parseInt(request.getParameter("memberId"))))
			{
				request.setAttribute("seeker",servicelayer.getSeekerByEmailService(request.getParameter("emailId")));
				request.getRequestDispatcher("/WEB-INF/pages/SearchResult.jsp").forward(request,response);
			}
			else
				{
				request.setAttribute("sitter",servicelayer.getSitterByEmailService(request.getParameter("emailId")));
				request.getRequestDispatcher("/WEB-INF/pages/SearchResult.jsp").forward(request,response);
				}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

}
