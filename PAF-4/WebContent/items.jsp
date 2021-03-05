<%@ page import="item.Item" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%if (request.getParameter("itemCode") != null)
{
	Item itemObj = new Item();
	String stsMsg = itemObj.insertItem(request.getParameter("itemCode"),
	request.getParameter("itemName"),
	request.getParameter("itemPrice"),
	request.getParameter("itemDesc"));
	session.setAttribute("statusMsg", stsMsg);
	
	System.out.println(stsMsg);
}
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Items Management</h1>
<form method="post" action="items.jsp">
Item code: <input name="itemCode" type="text"><br>
Item name: <input name="itemName" type="text"><br>
Item price: <input name="itemPrice" type="text"><br>
Item description: <input name="itemDesc" type="text"><br>
<input name="btnSubmit" type="submit" value="Save">
</form>

<%
out.print(session.getAttribute("statusMsg"));
%>

<br>
<%
Item itemObj = new Item();
out.print(itemObj.readItems());
%>
<script>

function clickMe(d) {
	alert("sdsdsd");
	<%
	{
		Item itemObj1 = new Item();
		String stsMsg = itemObj1.updateItem(request.getParameter("itemCode"),
		request.getParameter("itemName"),
		request.getParameter("itemPrice"),
		request.getParameter("itemDesc"),"1");
		session.setAttribute("statusMsg", stsMsg);
		
		System.out.println(stsMsg);
	}
	%>
}
</script>

</body>
</html>