package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");

		PrintWriter out = response.getWriter();

		out.print("<html><head><title>주문 결과</title></head><body>");
		if (address.indexOf("서울시") == -1) {
			out.print("배달불가지역입니다.");
		} else if (card.indexOf("신한") == 0) {
			out.print("결제불가카드입니다.");
		} else {
			out.print("<p>" + address + " <b>배달 준비중</b></p>");
			out.print("<p>결제금액 : " + price + "원</p>");
		}
		out.print("</body></html>");

	}
}
