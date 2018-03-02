<%@page import="java.util.List"%>
<%@page import="com.javawebtutor.service.LoginService"%>
<%@page import="java.util.Date"%>
<%@page import="com.javawebtutor.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<style>


#locator { 
    position: absolute; 
    visibility: visible; 
    right: 5%; top: 10%;

   
 }
</style>

<script type="text/javascript">
    function incrementValue(id)
    {
        value = parseInt(document.getElementById(id).value);
        value = isNaN(value) ? 0 : value;
        
            value++;
            document.getElementById(id).value = value;
             
        
        sum();
    }
    function decrementValue(id)
    {
        var value = parseInt(document.getElementById(id).value);
        value = isNaN(value) ? 0 : value;
        if(value>0){
            value--;
                document.getElementById(id).value = value;
               
        }
        sum();
    }

    function sum()
    {
  
      
        var total = parseInt(document.getElementById('number1').value) + 
                    parseInt(document.getElementById('number2').value) +
                    parseInt(document.getElementById('number3').value) +
                    parseInt(document.getElementById('number4').value) ;
      
                    document.getElementById('tot').value = total;
    }


    </script>
    

<body>

<!-- Header -->
<div class="header">
  <h1>Welcome to Food Waste Management Service</h1>

</div>

<!-- Photo Grid -->

  
<form  method = 'get' action = 'ProductServlet'>


   <div id="locator">
        <img src="images/addcart.png" width="200" height="200"><br>
        Total Items :  <input type="text" name="total" value="<%=session.getAttribute("total") %>"  size="5" id="tot" />
        <input type = "submit"  value = "checkout" />
   </div>
    <div class="container1">   
        <img src="images/1.jpg" width="200" height="200">
    
        <input type="button" onclick="decrementValue('number1')" value="-" />
        <input type="text" name="Soup" value="0" size="1" id="number1" />
        <input type="button" onclick="incrementValue('number1')" value="+" />
    </div><br>
    
    <div class="container2">   
        <img src="images/3.jpeg" width="200" height="200">
    
        <input type="button" onclick="decrementValue('number2')" value="-" />
        <input type="text" name="Fries" value="0"  size="1" id="number2" />
        <input type="button" onclick="incrementValue('number2')" value="+" />
    </div><br>
    
    <div class="container3">   
        <img src="images/11.jpg" width="200" height="200">
    
        <input type="button" onclick="decrementValue('number3')" value="-" />
        <input type="text" name="Coffee" value="0"  size="1" id="number3" />
        <input type="button" onclick="incrementValue('number3')" value="+" />
    </div><br>
    
    <div class="container4">   
        <img src="images/10.jpeg" width="200" height="200">
    
        <input type="button" onclick="decrementValue('number4')" value="-" />
        <input type="text" name="Burger" value="0"  size="1" id="number4" />
        <input type="button" onclick="incrementValue('number4')" value="+" />
    </div><br>
</form>




</body>
</html>