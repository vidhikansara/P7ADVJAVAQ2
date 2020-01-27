<html>
<body>
<%
	String num1 = request.getParameter("no1");
	String num2 = request.getParameter("no2");
	String oppe = request.getParameter("opp");
	int n1 = Integer.parseInt(num1);
	int n2 = Integer.parseInt(num2);
	int res;
	if(num1.equals("") && num2.equals("") && oppe.equals(""))
	{
		getServletContext().getRequestDispatcher("error.jsp").forward(request, response);
	}
	else
	{
		if(oppe.equals("+"))
		{
				res = n1+n2;
				out.print(n1+" + "+n2+" = "+res);
		}
		else if(oppe.equals("-"))
		{
			res = n1-n2;
			out.print(n1+" - "+n2+" = "+res);
		}
		else if(oppe.equals("*"))
		{
			res = n1*n2;
			out.print(n1+" * "+n2+" = "+res);
		}
		else if(oppe.equals("/"))
		{
			res = n1/n2;
			out.print(n1+" / "+n2+" = "+res);
		}
	}
	
	

%>
</body>
</html>