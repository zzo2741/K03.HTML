<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>get/post 방식으로 전송된 폼값 받기</h2>
	<%
		/*
		전송된 값의 한글깨짐방지를 위한 설정. 영어나 숫자만 있는 경우라면 설정하지 않아도 됨.
		*/
		request.setCharacterEncoding("UTF-8");

		/*
		JSP에서 폼값을 받을 때 아래와 같이 request내장객체를 사용한다.
		단, 서블릿(Servlet)에서는 get방식과 post방식에 따라 폼값을 받는 방법이 달라진다.
		*/
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pwd");
	%>
	<ul>
		<li>전송된 아이디 : <%=id%></li>
		<li>전송된 패스워드 : <%=pw%></li>
	</ul>
</body>
</html>