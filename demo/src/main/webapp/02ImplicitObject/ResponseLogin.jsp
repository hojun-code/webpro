<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - Response</title></head>
<body>
<h1>20251240:공호준</h1>
<%
  String id = request.getParameter("user_id");
  String pwd = request.getParameter("user_pwd");
  if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) {
    response.sendRedirect("ResponseWelcome.jsp");
  }
  else {
    request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
            .forward(request, response);
  }
%>
</body>
</html>