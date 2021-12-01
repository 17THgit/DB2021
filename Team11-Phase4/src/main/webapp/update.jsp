<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Menu</title>
</head>
<body>
	<form action="update2.jsp" method="POST">
		<%
			int num = Integer.parseInt(request.getParameter("update"));
			if (num == 1) {
				out.println("<input type=\"hidden\" name=\"update2\" value=\"1\">");
				out.println("수정할 환자의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"ssn\" /><br />");
				
				out.println("환자의 새로운 Last Name을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"lname\" /><br />");
				
				out.println("환자의 새로운 First Name을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"fname\" /><br />");
				
				out.println("환자의 새로운 Phone number을 입력해주세요(없으면 NULL을 그대로면 빈칸으로)");
				out.println("<input type=\"text\" name=\"phone_num\" /><br />");
				
				out.println("환자의 새로운 Sex을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"sex\" /><br />");
				
				out.println("환자의 새로운 지역번호를 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"number\" name=\"rno\" /><br />");
				
				out.println("환자의 새로운 병원번호를 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"number\" name=\"hno\" /><br />");
			}
			
			else if (num == 2) {
				out.println("<input type=\"hidden\" name=\"update2\" value=\"2\">");
				
				out.println("수정할 병원의 Id을 입력해주세요");
				out.println("<input type=\"text\" name=\"hno\" /><br />");
				
				out.println("병원의 새로운 이름을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"name\" /><br />");
				
				out.println("병원의 새로운 주소를 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"address\" /><br />");
				
				out.println("병원의 새로운 Phone Number를 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"phone_num\" /><br />");
				
				out.println("병원의 새로운 지역번호를 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"number\" name=\"rno\" /><br />");
			}
			
			else if (num == 3) {
				out.println("<input type=\"hidden\" name=\"update2\" value=\"3\">");
				
				out.println("수정할 지역의 Id를 입력해주세요");
				out.println("<input type=\"text\" name=\"rno\" /><br />");
				
				out.println("지역의 새로운 City Name을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"cname\" /><br />");
				
				out.println("지역의 새로운 DistrictName을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"dname\" /><br />");
				
			}
			
			else if (num == 4) {
				out.println("<input type=\"hidden\" name=\"update2\" value=\"4\">");
				
				out.println("수정할 관련인이 마주한 환자의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"pssn\" /><br />");
				
				out.println("수정할 관련인의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"bssn\" /><br />");
				
				out.println("관련인의 새로운 Last Name을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"lname\" /><br />");
				
				out.println("관련인의 새로운 First Name을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"fname\" /><br />");
				
				out.println("관련인의 새로운 Phone Number을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"phone_num\" /><br />");
				
				out.println("관련인의 새로운 Sex을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"sex\" /><br />");
				
			}
			
			else if (num == 5) {
				out.println("<input type=\"hidden\" name=\"update2\" value=\"5\">");
				
				out.println("수정될 경로정보의 환자의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"pssn\" /><br />");
				
				out.println("경로정보의 새로운 Path을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"path\" /><br />");
			}
			
			else if (num == 6) {
				out.println("<input type=\"hidden\" name=\"update2\" value=\"6\">");
				
				out.println("수정할 완치자의 Ssn을 입력해주세요");
				out.println("<input type=\"text\" name=\"ssn\" /><br />");
				
				out.println("완치자의 새로운 Treatment을 입력해주세요 (그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"treatment\" /><br />");
				
				out.println("완치자의 새로운 Finish Date을 입력해주세요(YY/MM/DD, 그대로면 빈칸)");
				out.println("<input type=\"text\" name=\"finish_date\" /><br />");
			}
			
			out.println("<input type=\"submit\" value=\"수정\">");
		%>
	</form>
</body>
</html>