<!doctype html>
<html>
<head>
<meta charset="big5">
<title>無標題文件</title>
</head>

<body>
<%
 tf = server.MapPath("talk.txt")
     set fo = server.CreateObject("scripting.filesystemobject")
     set out = fo.opentextfile(tf,8,true)
     out.writeline request("a")
     out.writeline request("b")
     out.writeline request("c")
     out.writeline request("d")
     out.writeline request("e")
     out.writeline request("f")
     
     out.close
     response.redirect "web5.asp"
     %>
</body>
</html>
