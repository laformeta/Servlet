package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class InsertQuiz02 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String siteName = request.getParameter("siteName");
		String address = request.getParameter("address");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// 쿼리문 실행
		String insertQuery = "insert into `bookmark`"
				+ "(`name`,`url`)"
				+ "values"
				+ "('" + siteName + "', '" + address + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		// 리디렉션
		response.sendRedirect("/lesson04/quiz02/quiz02_1.jsp");
	}
}
