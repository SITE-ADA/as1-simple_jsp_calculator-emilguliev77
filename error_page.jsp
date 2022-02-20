<%@ page isErrorPage="true" %>  
<html>
    <head>
        <title>Calculator: Error</title>
    
    </head>
    <body>
        There is an error :
        <br>
       <div > Error: <%= exception %> </div>
        <br> <div>
        <a href="./index.html" target="_self"> Try it again</a> </div>
    </body>
</html>