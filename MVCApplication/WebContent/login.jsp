<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login Page</title>

<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<form method="post" action="LoginServlet">

<H2>Login Page</H2><br>

<br />
<br />

UserID:<input name="userId"  title="Username" value="" size="30" maxlength="50" /><br>


Password:<input name="password" type="password"  title="Password" value="" size="30" maxlength="48" /><br>

<br />

New User?  <a href="register.jsp" style="margin-left:30px;">Register Here</a><br>

<br />
<br />
<input style="margin-left:100px;" type="submit" value="Login" /><br>


</form>

</body>
</html>
