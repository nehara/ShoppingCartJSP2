<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>

<h2 align="center">Online Shopping for you</h2>
<h3>Select your shopping items from the list and add to cart</h3>
</head>
<body>
<h4 align="center">
<form action ="MainShoppingItems.jsp" method="post">
<select name="ShopingItems" size="6" multiple="multiple">
<option value="Mobile Phone">Mobile</option>
<option value="Laptop">Laptop</option>
<option value="Television">Television</option>
<option value="Tablets">Tablets</option>
<option value="WashingMachine">Washing Machine</option>
<option value="Refrigerator">Refrigerator</option>
</select>
</h4>
<h4 align="center">
<input type="submit" name="add" value="Add to Card">
</h4>
</form>
</body>
</center>
</html>