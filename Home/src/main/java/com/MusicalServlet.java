package com;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/musical")
public class MusicalServlet extends HttpServlet{
	 @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        try {
	            // 크롤링 데이터 가져오기
	            List<MusicalCrawler.Musical> musicals = MusicalCrawler.getMusicalList();

	            // 데이터를 JSP로 전달
	            req.setAttribute("musicals", musicals);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        // JSP로 포워딩
	        req.getRequestDispatcher("views/Musical.jsp").forward(req, resp);
	    }

}
