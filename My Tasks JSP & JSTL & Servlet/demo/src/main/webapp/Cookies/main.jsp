<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>I'm Main Page</h1>
<%
	String favLang=" ";
    Cookie[] cookie=request.getCookies();
    if(cookie!=null){
    	for(int i=0;i<cookie.length;i++){
    		if(cookie[i].getName().equals("application.language")){
    			favLang=cookie[i].getValue();
    			break;
    		}
    		
    	}
    }
    
    out.print("<h1> Your Language is: "+favLang+"</h1>"); 
%>
</body>
</html>