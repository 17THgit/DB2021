<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import JDBC package -->
<%@ page language="java" import="java.sql.*, java.util.* , java.io.*, java.text.*, java.util.Date" %>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>COVID-19 PATIENT DB USER MENU</title>
</head>
<body>
	<div style="font-size:40px">COVID-19 PATIENT DATABASE MAIN MENU</div>
<%
	String serverIP = "localhost";
	String strSID = "xe";
	String portNum = "1521";
	String user = "TPPHASE2";
	String pass = "comp322";
	String url = "jdbc:oracle:thin:@" + serverIP + ":" + portNum + ":" + strSID;
	
	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, user, pass);
	
	String query = "";
	ResultSetMetaData rsmd;
	int cnt = 0;
	
	request.setCharacterEncoding("UTF-8");
	
	SimpleDateFormat dtf = new SimpleDateFormat("yyyy/MM/dd");
    Calendar calendar = Calendar.getInstance();
    Date dateObj = calendar.getTime();
    String formattedDate = dtf.format(dateObj);
    String todaydate = formattedDate.substring(2);
	
%>
	<!-- 총 확진자 수 / 신규 확진자 수 바로 출력 -->
	<div style="font-size:32px">총 확진자 수 / 신규 확진자 수</div>
	<div style="font-size:20px">
<%
	query = "SELECT COUNT(pssn) AS ALL_PATIENTS FROM HAS";
	System.out.println(query);
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	out.println("<table border=\"1\">");
	rsmd = rs.getMetaData();
	cnt = rsmd.getColumnCount();
	
	for(int i = 1; i <= cnt; i++)
		out.println("<th>" + rsmd.getColumnName(i) + "</th>");
	while(rs.next())
	{
		out.println("<tr>");
		out.println("<td>" + rs.getString(1) + "</td>");
		out.println("</tr>");
	}
	out.println("</table>");
	
	query = "SELECT COUNT(pssn) AS NEW_PATIENTS FROM HAS WHERE start_date = '" + todaydate + "'";
	System.out.println(query);
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	out.println("<table border=\"1\">");
	rsmd = rs.getMetaData();
	cnt = rsmd.getColumnCount();
	
	for(int i = 1; i <= cnt; i++)
		out.println("<th>" + rsmd.getColumnName(i) + "</th>");
	while(rs.next())
	{
		out.println("<tr>");
		out.println("<td>" + rs.getString(1) + "</td>");
		out.println("</tr>");
	}
	out.println("</table>");
%>
	</div>
	
	<!-- 총 완치자 수 / 신규 완치자 수 바로 출력 -->
	<div style="font-size:32px">총 완치자 수 / 신규 완치자 수</div>
	<div style="font-size:20px">
<%
	query = "SELECT COUNT(pssn) AS ALL_RECOVERIES FROM RECOVERY";
	System.out.println(query);
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	out.println("<table border=\"1\">");
	rsmd = rs.getMetaData();
	cnt = rsmd.getColumnCount();
	
	for(int i = 1; i <= cnt; i++)
		out.println("<th>" + rsmd.getColumnName(i) + "</th>");
	while(rs.next())
	{
		out.println("<tr>");
		out.println("<td>" + rs.getString(1) + "</td>");
		out.println("</tr>");
	}
	out.println("</table>");
	
	query = "SELECT COUNT(pssn) AS NEW_RECOVERIES FROM RECOVERY WHERE finish_date = '" + todaydate + "'";
	System.out.println(query);
	pstmt = conn.prepareStatement(query);
	rs = pstmt.executeQuery();
	
	out.println("<table border=\"1\">");
	rsmd = rs.getMetaData();
	cnt = rsmd.getColumnCount();
	
	for(int i = 1; i <= cnt; i++)
		out.println("<th>" + rsmd.getColumnName(i) + "</th>");
	while(rs.next())
	{
		out.println("<tr>");
		out.println("<td>" + rs.getString(1) + "</td>");
		out.println("</tr>");
	}
	out.println("</table>");
%>
	</div>

	<!-- 환자, 지역별 확진자 입력 후 menuanswer.jsp로 값 넘기기 -->
	<form action = "menuanswer.jsp">
			
		<!-- 환자(pName) 검색 -->
		<div style="font-size:32px">검색할 환자명을 입력하십시오</div>
		<div style="font-size:20px">
		PATIENT NAME: <INPUT TYPE = "TEXT" NAME = "pName">
		</div>
		
		<!-- 지역별 확진자 수 검색 -->
		<div style="font-size:32px">검색할 도시명을 입력하십시오</div>
		<div style="font-size:20px">
		CITY NAME: <INPUT TYPE = "TEXT" NAME = "city">
		</div>
		
		<!-- 제출 버튼 -->
		<!-- 버튼 크기 늘려보기 -->
		<INPUT TYPE = "reset" value = "Reset">
		<INPUT TYPE = "submit" value = "Submit">
	</form>

	<!-- button -->
	<div>
		<button style = "font-size: 20px" type="button" onClick="location.href='query2.html'">
		more queries...</button>
	</div>
</body>
</html>
