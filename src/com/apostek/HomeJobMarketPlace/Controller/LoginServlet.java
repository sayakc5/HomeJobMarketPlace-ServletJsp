package com.apostek.HomeJobMarketPlace.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.apostek.HomeJobMarketPlace.service.ServiceLayer;
import com.apostek.HomeJobMarketPlace.service.ServiceLayerImpl;

/**
 * Servlet implementation class controllerServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//request.getRequestDispatcher("/WEB-INF/pages/Home.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId=request.getParameter("userId");
		String userPass=request.getParameter("userPass");
		ServiceLayer servicelayer=new ServiceLayerImpl();
		PrintWriter out=response.getWriter();
		if("".equals(userId)|| "".equals(userPass))
		out.println("Fields cannot be left blank...");
		else
			try {
				if(!servicelayer.isValidMember(Integer.parseInt(userId)))
					out.println("Please enter a vaild UserId");
				else if(servicelayer.getPasswordByIdService(Integer.parseInt(userId)).equals(userPass))
				{
					HttpSession session=request.getSession();
					session.setAttribute("MEMBERID",Integer.parseInt(userId));
					if(servicelayer.isSeekerService(Integer.parseInt(userId)))
					request.getRequestDispatcher("/WEB-INF/pages/HomeSeeker.jsp").forward(request,response);
					else
					request.getRequestDispatcher("/WEB-INF/pages/HomeSitter.jsp").forward(request,response);
				}
				else
					out.println("Invalid Credentials Please try again!!");
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
