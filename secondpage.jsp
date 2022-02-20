<%@ page Errorage="error_page.jsp" %> 
<html>
<head>
    <title>Simple Calculator</title>
</head>

<body>
        int x,y;
        int res = 0;
    
      
        x = Integer.parseInt(request.getParameter("firstobject"));

        y = Integer.parseInt(request.getParameter("secondobject")); 
        
        

        String op_code = request.getParameter("op");

        if ("add".equals(op_code)) {
            operator = "+";
            res = x + y;
        } 
        if ("mul".equals(op_code)) {
            operator = "*";
            res = x * y;
        }
        if ("sub".equals(op_code)) {
            operator = "-";
            res = x - y;
        
        }
        if ("div".equals(op_code)) {
            operator = "/";
            res = x / y;
            
        }
    


    <p><% out.println("First object : " + x); %></p>
    <p><% out.println("Second object : " + y); %></p>
    <p><% out.println("Result==== " + res);%></p>
</div>
    <a href="./index.html"> Try it again</a>
</body>
</html>
