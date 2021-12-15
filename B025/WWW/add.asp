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

out.close
response.Redirect("web5.asp")
%>
</body>
</html>
