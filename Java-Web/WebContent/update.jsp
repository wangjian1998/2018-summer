<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h3 align="center">员工新页面</h3>
  <h3 align="right">登录账号：<%=session.getAttribute("account") %></h3>
  <hr>
  <form action="update_control.jsp">
  <table align="center" border=1 width=200px>
  <tr>
  <td>账号</td>
  <td><input type="text" name="account" value="<%=request.getParameter("account")%>"></td>
 </tr>
 <tr>
  <td>姓名</td>
  <td><input type="text" name="name" value="<%=request.getParameter("name")%>"></td>
  </tr>
  <tr>
  <td>邮箱</td>
  <td><input type="text" name="email" value="<%=request.getParameter("email")%>"></td>
  </tr>
  <tr>
  <td colspan="2"><input type="submit" value="修改"></td>
  </tr>
  </table>
  </form>
</body>
</html>