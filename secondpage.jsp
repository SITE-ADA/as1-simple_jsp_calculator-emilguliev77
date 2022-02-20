<%@ page errorPage="error_page.jsp" %> 
<%@ page import="java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Simple Calculator</title>
</head>

<body>

<div class=arithmetics>
    <% boolean invNumberFlag = false;
        int x = 111111111;
        int y = 111111111;
        String regex = "-?[0-9]+";
        %>
       <% if (Pattern.matches(regex,request.getParameter("firstobject"))) {
        x = Integer.parseInt(request.getParameter("firstobject"));}
        else {invNumberFlag = true;
        out.println("First object is invalid.");}

        if (Pattern.matches(regex,request.getParameter("secondobject"))) {
        y = Integer.parseInt(request.getParameter("secondobject")); }
        else {invNumberFlag = true;
            out.println("Second object is invalid.");}

        int res = 0;

        boolean divZeroFlag = false;
        boolean invOperatorFlag = false;
        String operator = "null";
        String op_code = request.getParameter("op");

        if ("add".equals(op_code)) {
            operator = "+";
            res = x + y;
        } else if ("mul".equals(op_code)) {
            operator = "*";
            res = x * y;
        } else if ("sub".equals(op_code)) {
            operator = "-";
            res = x - y;
        
        } else if ("div".equals(op_code)) {
            operator = "/";
            if (y == 0) {
                out.println("Division by zero ");
                divZeroFlag = true;
            } else {
                res = x / y;
            }
        }

    %>
    <% if ("null".equals(operator)) {
        out.println("Method's request is invalid.");
        invOperatorFlag = true;
    }
    %>

    <% if (!invOperatorFlag && !divZeroFlag && !invNumberFlag) { %>

    <p><% out.println("First object : " + x); %></p>
    <p><% out.println("Second object : " + y); %></p>
    <p><% out.println("Result==== " + res);
    }%></p>
</div>
<div>
    <a href="./index.html" target="_self" style="text-decoration: none;"> Try it again</a>
</div>
</body>
</html>