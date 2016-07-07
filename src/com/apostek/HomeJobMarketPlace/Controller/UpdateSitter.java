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

import com.apostek.HomeJobMarketPlace.entity.Seeker;
import com.apostek.HomeJobMarketPlace.entity.Sitter;
import com.apostek.HomeJobMarketPlace.service.ServiceLayer;
import com.apostek.HomeJobMarketPlace.service.ServiceLayerImpl;

/**
 * Servlet implementation class UpdateSitter
 */
@WebServlet("/UpdateSitter")
public class UpdateSitter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSitter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		ServiceLayer servicelayer=new ServiceLayerImpl();
		Sitter sitter=new Sitter();
		int mid=(Integer)session.getAttribute("MEMBERID");
		try {
			sitter=servicelayer.getSitterByIdService(mid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("memberId",sitter.getId());
		request.setAttribute("firstName",sitter.getFristName());
		request.setAttribute("lastName",sitter.getLastName());
		request.setAttribute("phoneNumber",sitter.getPhoneNumber());
		request.setAttribute("email",sitter.getEmail());
		request.setAttribute("address",sitter.getAddress());
		request.setAttribute("type",sitter.getType());
		request.setAttribute("experience",sitter.getExperience());
		request.setAttribute("expectedPay",sitter.getExpectedPay());
		request.getRequestDispatcher("/WEB-INF/pages/UpdateSitter.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServiceLayer servicelayer=new ServiceLayerImpl();
		Sitter sitter=new Sitter();
		PrintWriter out=response.getWriter();
		sitter.setId(Integer.parseInt(request.getParameter("memberId")));
		sitter.setFristName(request.getParameter("firstName"));
		sitter.setLastName(request.getParameter("lastName"));
		sitter.setPhoneNumber(Integer.parseInt(request.getParameter("phoneNumber")));
		sitter.setEmail(request.getParameter("email"));
		sitter.setAddress(request.getParameter("address"));
		sitter.setType(request.getParameter("type"));
		sitter.setExperience(Integer.parseInt(request.getParameter("experience")));
		sitter.setExpectedPay(Integer.parseInt(request.getParameter("expectedPay")));
		try {
			if(servicelayer.updateSitterService(sitter,Integer.parseInt(request.getParameter("memberId")))==1)
			{out.println("<script>alert(\"Updated Successfully\")</script>");request.getRequestDispatcher("/WEB-INF/pages/HomeSitter.jsp").forward(request,response);}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
