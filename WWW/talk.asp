<%
  response.write "ok<p>"
%>
<!doctype html>
<html>
<head>
  <meta content="text/html; charset=utf-8">
</head>
<body>
<%
 tf=server.mappath("talk.txt")
set fo =server.createobject("scripting.filesystemobject")
set out=fo.opentextfile(tf,1)
do until out.atendofstream
n=out.readline
w=out.readline
response.write "大名:" & n & "<br>"
response.write "留言:" & w & "<p>"
loop
%>
<hr>
<form method="post" action="add.asp">
<table width=80% border=1 >
<tr>
<td colspan=2 align=center>歡迎留言
<tr>
 <td>大名:
 <td> 
  <input type="text" size=10 name="n">
<tr>
 <td>留言:
 <td>
  <input type="text" size=20 name="w">
<tr>
<td colspan=2 align=right>
  <input type="submit" value="我要留言">
</table>
</form>
</body>
</html>