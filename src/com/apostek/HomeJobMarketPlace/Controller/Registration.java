package com.apostek.HomeJobMarketPlace.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.apostek.HomeJobMarketPlace.entity.Password;
import com.apostek.HomeJobMarketPlace.entity.Seeker;
import com.apostek.HomeJobMarketPlace.entity.Sitter;
import com.apostek.HomeJobMarketPlace.service.ServiceLayer;
import com.apostek.HomeJobMarketPlace.service.ServiceLayerImpl;

/**
 * Servlet implementation class Registration
 */
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/pages/CreateMember.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		final String SEEKER="SEEKER";
		final String SITTER="SITTER";
		int idshow=0;
		ServiceLayer servicelayer=new ServiceLayerImpl();
		PrintWriter out=response.getWriter();
		Seeker seeker;Sitter sitter;
		Password password=new Password();
		
		System.out.println(request.getParameter("type"));
		if(request.getParameter("type").equalsIgnoreCase(SEEKER))
		{
			seeker=new Seeker();
			seeker.setFristName(request.getParameter("firstName"));
			seeker.setLastName(request.getParameter("lastName"));
			seeker.setPhoneNumber(Integer.parseInt(request.getParameter("phoneNumber")));
			seeker.setEmail(request.getParameter("email"));
			seeker.setAddress(request.getParameter("address"));
			seeker.setType(SEEKER);
			seeker.setNumberOfChildren(Integer.parseInt(request.getParameter("numberOfChildren")));
			seeker.setSpouseName(request.getParameter("spouseName"));
			try {
				if(servicelayer.addSeekerService(seeker)==1)
				{
					idshow=servicelayer.getSeekerByEmailService(seeker.getEmail()).getId();
					password.setMemberId(idshow);
					password.setPassword(request.getParameter("password"));
					if(servicelayer.addPasswordService(password)==1){
					request.setAttribute("membershipId","Your membership id is"+idshow);
					   request.getRequestDispatcher("/WEB-INF/pages/Login.jsp").forward(request,response);
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(request.getParameter("type").equalsIgnoreCase(SITTER))
		{
			sitter=new Sitter();
			sitter.setFristName(request.getParameter("firstName"));
			sitter.setLastName(request.getParameter("lastName"));
			sitter.setPhoneNumber(Integer.parseInt(request.getParameter("phoneNumber")));
			sitter.setEmail(request.getParameter("email"));
			sitter.setAddress(request.getParameter("address"));
			sitter.setType(SITTER);
			sitter.setExperience(Integer.parseInt(request.getParameter("experience")));
			sitter.setExpectedPay(Integer.parseInt(request.getParameter("expectedPay")));
			try {
				if(servicelayer.addSitterService(sitter)==1)
				{
					
					idshow=servicelayer.getSitterByEmailService(sitter.getEmail()).getId();
					password.setMemberId(idshow);
					password.setPassword(request.getParameter("password"));
					if(servicelayer.addPasswordService(password)==1){
					request.setAttribute("membershipId","Your membership id is"+idshow);
					request.getRequestDispatcher("/WEB-INF/pages/Login.jsp").forward(request,response);
				}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
