<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order Summary</title>
</head>
<body>

Thank you for Shopping with us<br><br>
<h1> Your Order Summary : </h1>


     <table>
             <thead>
                 <tr>
                     <th>Product Name</th>
                     <th>Quantity</th>
                     <th>Price</th>
                                  
                 </tr>
             </thead>
             <tbody>
                 
                 
                  <% if ((Integer)session.getAttribute("coffee") == 0) { %>
				        
				      <% } else { %>
				         <tr>
	                 	 <td>Coffee</td>
	                     <td><%=session.getAttribute("coffee")%></td>
                  		</tr>
				      <% } %>
                         
               <%--   <tr>
                 	 <td>Soup</td>
                     <td><%=session.getAttribute("soup")%></td>
                   
                 </tr> --%>
                 
                 
                  <% if ((Integer)session.getAttribute("soup") == 0) { %>
				        
				      <% } else { %>
				         <tr>
	                 	 <td>Soup</td>
	                     <td><%=session.getAttribute("soup")%></td>
                  		</tr>
				      <% } %>
                 
                   <% if ((Integer)session.getAttribute("Fries") == 0) { %>
				        
				      <% } else { %>
				         <tr>
	                 	 <td>Fries</td>
	                     <td><%=session.getAttribute("Fries")%></td>
                  		</tr>
				      <% } %>
                 
                   <% if ((Integer)session.getAttribute("burger") == 0) { %>
				        
				      <% } else { %>
				         <tr>
	                 	 <td>Burger</td>
	                     <td><%=session.getAttribute("burger")%></td>
                  		</tr>
				      <% } %>
				   
				     <tr>
                 	 <td></td>
                     <td></td>
                 	</tr>  
				    <tr>
                 	 <td>Total Products</td>
                     <td><%=session.getAttribute("total")%></td>
                 	</tr>  
				      
              
             <tbody>
         </table>



<br>
<br>



Shop again <a href = "home.jsp" >Visit Home page</a><br>
<a href = "logout.jsp" >Logout</a>

</body>
</html>