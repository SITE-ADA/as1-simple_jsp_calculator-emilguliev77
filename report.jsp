<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
</head>
<body>
    <% String userinfo = request.getHeader("User-Agent"); %> 

 <h3>Info about  browser <span><%=userinfo%></span></h3>
 <a href="secondpage.jsp"> Go back to the home page</a>
</body>
</html>