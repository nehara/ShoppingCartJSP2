<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<%HashMap<Integer, String> map=new HashMap<Integer, String>();
if(request.getParameter("add")!=null)
{
	String[] shopingItems=request.getParameterValues("ShopingItems");
	for(int i=0;i<shopingItems.length;i++)
	{
		map.put(new Integer(i+1),shopingItems[i]);
	}
	request.setAttribute("map1", map);
	%>
	<c:forEach var="i" items="${map1}">
	Product number: ${i.key}  - Product name: ${i.value}<br>
</c:forEach>
	
	
	<jsp:include page="ShoppingOptions.jsp"></jsp:include>
	
<%}
else if(request.getParameter("Delete")!=null)
		{
			int key=Integer.parseInt(request.getParameter("delete"));
			
			map.remove(key);
			
			
		%>
			<h3>Item deleted successfully</h3><br>
			<jsp:include page="DisplayItem.jsp"></jsp:include>
			<jsp:include page="logout.jsp"></jsp:include>
		<%
		}
		else if((request.getParameter("display")!=null))
		{
			HashMap map2=(HashMap)request.getAttribute("map1");
		%>
		<h3>Selected items are:</h3>
		
		<c:forEach var="i" items="${map2}">
		Product number: ${i.key}  - Product name: ${i.value}<br>
		</c:forEach>
		<jsp:include page="logout.jsp"></jsp:include>
		<% }%>

</body>
</html>