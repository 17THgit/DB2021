<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Menu</title>
</head>
<body>
	<form action="delete2.jsp" method="POST">
		<%
			int num = Integer.parseInt(request.getParameter("delete"));
			if (num == 1) {
				out.println("<input type=\"hidden\" name=\"delete2\" value=\"1\">");
				out.println("삭제할 환자의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"ssn\" /><br />");
			}
			
			else if (num == 2) {
				out.println("<input type=\"hidden\" name=\"delete2\" value=\"2\">");
				
				out.println("삭제할 병원의 Id을 입력해주세요");
				out.println("<input type=\"text\" name=\"hno\" /><br />");
			}
			
			else if (num == 3) {
				out.println("<input type=\"hidden\" name=\"delete2\" value=\"3\">");
				
				out.println("삭제할 지역의 Id를 입력해주세요");
				out.println("<input type=\"text\" name=\"rno\" /><br />");
			}
			
			else if (num == 4) {
				out.println("<input type=\"hidden\" name=\"delete2\" value=\"4\">");
				
				out.println("삭제할 증상이름을 입력해주세요");
				out.println("<input type=\"text\" name=\"sname\" /><br />");
			}
			
			else if (num == 5) {
				out.println("<input type=\"hidden\" name=\"delete2\" value=\"5\">");
				
				out.println("삭제할 환자의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"ssn\" /><br />");
				
				out.println("삭제할 환자의 증상이름을 입력해주세요");
				out.println("<input type=\"text\" name=\"sname\" /><br />");
			}
			
			else if (num == 6) {
				out.println("<input type=\"hidden\" name=\"delete2\" value=\"6\">");
				
				out.println("삭제할 관련인이 마주한 환자의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"pssn\" /><br />");
				
				out.println("삭제할 관련인의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"bssn\" /><br />");
				
			}
			
			else if (num == 7) {
				out.println("<input type=\"hidden\" name=\"delete2\" value=\"7\">");
				
				out.println("삭제할 경로정보의 환자의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"pssn\" /><br />");
			}
			
			else if (num == 8) {
				out.println("<input type=\"hidden\" name=\"delete2\" value=\"8\">");
				out.println("삭제할 완치자의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"ssn\" /><br />");
			}
			
			out.println("<input type=\"submit\" value=\"삭제\">");
		%>
	</form>
</body>
</html>