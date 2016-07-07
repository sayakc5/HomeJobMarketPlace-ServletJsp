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
 * Servlet implementation class UpdateSeeker
 */
@WebServlet("/UpdateSeeker")
public class UpdateSeeker extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSeeker() {
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
		Seeker seeker=new Seeker();
		int mid=(Integer)session.getAttribute("MEMBERID");
		try {
			seeker=servicelayer.getSeekerByIdService(mid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("memberId",seeker.getId());
		request.setAttribute("firstName",seeker.getFristName());
		request.setAttribute("lastName",seeker.getLastName());
		request.setAttribute("phoneNumber",seeker.getPhoneNumber());
		request.setAttribute("email",seeker.getEmail());
		request.setAttribute("address",seeker.getAddress());
		request.setAttribute("type",seeker.getType());
		request.setAttribute("numberOfChildren",seeker.getNumberOfChildren());
		request.setAttribute("spouseName",seeker.getSpouseName());
		request.getRequestDispatcher("/WEB-INF/pages/UpdateSeeker.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServiceLayer servicelayer=new ServiceLayerImpl();
		Seeker seeker=new Seeker();
		PrintWriter out=response.getWriter();
		seeker.setId(Integer.parseInt(request.getParameter("memberId")));
		seeker.setFristName(request.getParameter("firstName"));
		seeker.setLastName(request.getParameter("lastName"));
		seeker.setPhoneNumber(Integer.parseInt(request.getParameter("phoneNumber")));
		seeker.setEmail(request.getParameter("email"));
		seeker.setAddress(request.getParameter("address"));
		seeker.setType(request.getParameter("type"));
		seeker.setNumberOfChildren(Integer.parseInt(request.getParameter("numberOfChildren")));
		seeker.setSpouseName(request.getParameter("spouseName"));
		try {
			if(servicelayer.updateSeekerService(seeker,Integer.parseInt(request.getParameter("memberId")))==1)
			{out.println("<script>alert(\"Updated Successfully\")</script>");request.getRequestDispatcher("/WEB-INF/pages/HomeSeeker.jsp").forward(request,response);}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
