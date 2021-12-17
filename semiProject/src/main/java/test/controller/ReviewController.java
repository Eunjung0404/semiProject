package test.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.ReviewDao;
import test.vo.ReviewVo;

@WebServlet("/review")
public class ReviewController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mid = (String)req.getSession().getAttribute("mid");
		
		ReviewDao dao=new ReviewDao();
		ArrayList<ReviewVo> list = dao.selectMyReview(mid);
		req.setAttribute("list", list);
		
		String spage=req.getParameter("spage");
		if(spage==null)
		{
			spage="home.jsp";
		}
		
		req.setAttribute("header", "header.jsp");
		req.setAttribute("menu", "menu.jsp");
		req.setAttribute("main", "/REVIEW/ReviewList.jsp");
		req.setAttribute("footer", "footer.jsp");
		req.getRequestDispatcher("/layout.jsp").forward(req, resp);
		
	}
}
