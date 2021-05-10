<%@page import="cart.OrderBean"%>
<%@page import="javax.naming.*"%>
<%@page import="java.util.*"%>
<%@page import="cart.CartDAOImpl"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%!	private DataSource ds;
		private HttpSession session;
		private InitialContext ctx;
		private Connection conn = null;
		private ArrayList<ArrayList<String>> dataArrays = null;%>    
<%
try 
{
	if (this.ds == null) 
	{	
		ctx = new InitialContext();
		// 改資料庫名稱
		this.ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/DBDB");
	}
	this.conn = this.ds.getConnection();
} catch (NamingException e) 
{
	e.printStackTrace();
} catch (SQLException e) 
{
	e.printStackTrace();
} 
CartDAOImpl dao = new CartDAOImpl(conn);
dao.selectAllOrder();
dataArrays = CartDAOImpl.dataArrays;
%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",-1);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Administrator Page</title>
</head>
<body>
	<form method="POST" action="/AwesomeProject/CartControllerServlet"> 
	<!-- 秀出所有Order_Info + 每20項分一頁 -->
		<table border="1">
			<thead>
				<th>Order ID</th>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>User ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>E-mail</th>
				<th>Order Status</th>
				<th>Order Date</th>
				<th>Order Amount</th>
				<th>DELETE BUTTON</th>
			</thead>
			<tbody>
				<% 
					ArrayList<OrderBean> adminBeans = new ArrayList();
					for(int i = 0; i < dataArrays.size(); i++) {
					
			     %>

					<tr>
					<% // String beanName = "O_ID" + dataArrays.get(i).get(0);%>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(0)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(1)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(2)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(3)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(4)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(5)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(6)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(7)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(8)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(9)%>"></td>
						<td><input name="" type="text" value="<%=dataArrays.get(i).get(10)%>"></td>
						<td><input name="" type="radio"></td>
						<% 
							OrderBean xxx =  new OrderBean(dataArrays.get(i).get(0),
									                       dataArrays.get(i).get(1),
									                       dataArrays.get(i).get(2),
									                       Integer.parseInt(dataArrays.get(i).get(3)),
									                       dataArrays.get(i).get(4),
									                       dataArrays.get(i).get(5),
									                       dataArrays.get(i).get(6),
									                       dataArrays.get(i).get(7),
									                       dataArrays.get(i).get(8),
									                       dataArrays.get(i).get(9),
									                       Integer.parseInt(dataArrays.get(i).get(10))
									);
							// 大量造bean進session attribute，名稱即是O_ID
							adminBeans.add(xxx);
							// System.out.println(session.getAttribute(dataArrays.get(i).get(0)));
						%>
					<%
					
							session.setAttribute("adminBeans", adminBeans);
					}
					%>
					</tr>
			</tbody>
		</table>
		
        <hr>

        <button name="todo" value="updateAdmin">修改</button>
        <button name="todo" value="deleteAdmin">刪除</button>
        <button name="todo" value="insertAdmin">新增</button>

        <hr>
        
	
        
	
	<hr>
	
	
	</form>
	
	

</body>
</html>