<!doctype html>
<html>
<head>
<meta content="text/html" charset="utf-8">
</head>

<body>
<%
n=request("n")
email=request("email")
phone=request("phone")
message=request("message")
tf=server.mappath("talk.txt")
set fo=server.createobject("scripting.filesystemobject")
set out=fo.opentextfile(tf,8,true)
out.writeline n
out.writeline email
out.writeline phone
out.writeline message
out.close
response.redirect "index3.asp"
%>
</body>
</html>
