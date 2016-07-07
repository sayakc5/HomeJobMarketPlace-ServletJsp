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
 * Servlet implementation class DeleteApplication
 */
@WebServlet("/DeleteApplication")
public class DeleteApplication extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteApplication() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/pages/DeleteApplication.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServiceLayer servicelayer=new ServiceLayerImpl();
		HttpSession session=request.getSession();
		PrintWriter out=response.getWriter();
		int applicationId=Integer.parseInt(request.getParameter("applicationId"));
		int mid=(Integer)session.getAttribute("MEMBERID");
		try {
			if(servicelayer.isApplierService(applicationId, mid))
			{
			if(servicelayer.deleteApplicationById(applicationId)==1)
				request.getRequestDispatcher("/WEB-INF/pages/HomeSitter.jsp").forward(request,response);
		}
			else
			{
				out.println("<script>alert(\"You Are Not Allowed To Delete Applications Posted By Others!\")</script>");
			}
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
