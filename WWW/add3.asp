<!doctype html>
<html>
<head>
   <meta content="text/html; charest=utf-8">
</head>
<body>
<%
n=request("n")
w=request("w")
tf=server.mappath("talk.txt")
set fo=server.createobject("scripting.filesystemobject")
set out=fo.opentextfile(tf,8,ture)
out.writeline n
out.writeline w
out.close
response.redirect "talk3.asp"
%>
</body>
</html>