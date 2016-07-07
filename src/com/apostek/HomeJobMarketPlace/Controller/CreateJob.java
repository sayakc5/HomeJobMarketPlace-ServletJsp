package com.apostek.HomeJobMarketPlace.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apostek.HomeJobMarketPlace.entity.Job;
import com.apostek.HomeJobMarketPlace.service.ServiceLayer;
import com.apostek.HomeJobMarketPlace.service.ServiceLayerImpl;

/**
 * Servlet implementation class CreateJob
 */
@WebServlet("/CreateJob")
public class CreateJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateJob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.getRequestDispatcher("/WEB-INF/pages/CreateJob.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServiceLayer servicelayer=new ServiceLayerImpl();
		Job job=new Job();
		job.setTitle(request.getParameter("jobTitle"));
		job.setMemberId(Integer.parseInt(request.getParameter("memberId")));
		job.setStartDate(request.getParameter("startDate"));
		job.setEndDate(request.getParameter("endDate"));
		job.setStartTime(request.getParameter("startTime"));
		job.setEndTime(request.getParameter("endTime"));
		job.setPayPerHour(Integer.parseInt(request.getParameter("payPerHour")));
		try {
			if(servicelayer.addJobService(job)==1)
				request.getRequestDispatcher("/WEB-INF/pages/HomeSeeker.jsp").forward(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
