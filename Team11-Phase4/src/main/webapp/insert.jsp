<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import JDBC package -->
<%@ page language="java" import="java.sql.*, java.util.* , java.io.*, java.text.*, java.util.Date" %>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert Menu</title>
</head>
<body>
	<form action="insert2.jsp" method="POST">
		<%
			int num = Integer.parseInt(request.getParameter("insert"));
			if (num == 1) {
				out.println("<input type=\"hidden\" name=\"insert2\" value=\"1\">");
				out.println("ȯ���� Last Name�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"lname\" /><br />");
				
				out.println("ȯ���� First Name�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"fname\" /><br />");
				
				out.println("ȯ���� Ssn�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"ssn\" /><br />");
				
				out.println("ȯ���� Phone number�� �Է����ּ���(������ NULL�� �Է����ּ���)");
				out.println("<input type=\"text\" name=\"phone_num\" /><br />");
				
				out.println("ȯ���� Sex�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"sex\" /><br />");
				
				out.println("ȯ���� ������ �Է����ּ���");
				out.println("<input type=\"number\" name=\"rno\" /><br />");
				
				out.println("ȯ���� ������ �Է����ּ���");
				out.println("<input type=\"number\" name=\"hno\" /><br />");
				
				
			}
			
			else if (num == 2) {
				out.println("<input type=\"hidden\" name=\"insert2\" value=\"2\">");
				
				out.println("������ Name�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"name\" /><br />");
				
				out.println("������ Phone number�� �Է����ּ���(������ NULL�� �Է����ּ���)");
				out.println("<input type=\"text\" name=\"phone_num\" /><br />");
				
				out.println("������ ������ �Է����ּ���");
				out.println("<input type=\"number\" name=\"rno\" /><br />");
				
				out.println("������ �ּҸ� �Է����ּ���");
				out.println("<input type=\"text\" name=\"address\" /><br />");
			}
			
			else if (num == 3) {
				out.println("<input type=\"hidden\" name=\"insert2\" value=\"3\">");
				
				out.println("������ City Name�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"cname\" /><br />");
				
				out.println("������ District Name�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"dname\" /><br />");
			}
			
			else if (num == 4) {
				out.println("<input type=\"hidden\" name=\"insert2\" value=\"4\">");
				
				out.println("������ Name�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"sname\" /><br />");
				
			}
			
			else if (num == 5) {
				out.println("<input type=\"hidden\" name=\"insert2\" value=\"5\">");
				
				out.println("ȯ���� Ssn�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"ssn\" /><br />");
				
				out.println("ȯ���� ���� Name�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"sname\" /><br />");
				
				out.println("ȯ���� ���� Start date�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"start_date\" /><br />");	
			}
			
			else if (num == 6) {
				out.println("<input type=\"hidden\" name=\"insert2\" value=\"6\">");
				
				out.println("����ģ ȯ���� Ssn�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"pssn\" /><br />");
				
				out.println("�������� Last Name�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"lname\" /><br />");
				
				out.println("�������� First Name�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"fname\" /><br />");
				
				out.println("�������� Ssn�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"bssn\" /><br />");
				
				out.println("�������� Phone Number�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"phone_num\" /><br />");
				
				out.println("�������� Sex�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"sex\" /><br />");
				
			}
			
			else if (num == 7) {
				out.println("<input type=\"hidden\" name=\"insert2\" value=\"7\">");
				
				out.println("ȯ���� Ssn�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"ssn\" /><br />");
				
				out.println("ȯ���� Path�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"path\" /><br />");
			}
			
			else if (num == 8) {
				out.println("<input type=\"hidden\" name=\"insert2\" value=\"8\">");
				
				out.println("��ġ���� Ssn�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"ssn\" /><br />");
				
				out.println("��ġ���� Treatment�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"treatment\" /><br />");
				
				out.println("��ġ���� Finish Date�� �Է����ּ���");
				out.println("<input type=\"text\" name=\"finish_date\" /><br />");
			}
			
			out.println("<input type=\"submit\" value=\"���\">");
		%>
	</form>
</body>
</html>