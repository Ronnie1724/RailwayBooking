<%@page import="java.util.Arrays"%>
<%@page import="dto.Train"%>
<%@page import="dao.TrainDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
TrainDao dao=new TrainDao();
Train train=dao.fetch(Integer.parseInt(request.getParameter("number")));
%>

<form action="updatetrain" method="post">
Train Number: <input type="number" name="tnumber" value="<%=train.getNumber()%>" readonly="readonly"><br>
Train Name: <input type="text" name="tname" value="<%=train.getName()%>"><br>
Number of Seats: <input type="number" name="tseat" value="<%=train.getSeat()%>"><br>
Stations: <textarea rows="5" cols="30" name="tstation"><%=Arrays.toString(train.getStations())%></textarea><br>
Ticket Price: <textarea rows="5" cols="30" name="tprice"><%=Arrays.toString(train.getPrice())%></textarea><br>
Time: <textarea rows="5" cols="30" name="ttime"><%=Arrays.toString(train.getTime())%></textarea><br>
Days: <textarea rows="5" cols="30" name="tday"><%=Arrays.toString(train.getDays())%></textarea><br>
<button type="reset">Cancel</button><button>Update</button>
</form>
<br>
</body>
</html>