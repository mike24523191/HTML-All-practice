<%
  response.write "ok<p>"
%>
<!doctype html>
<html>
<head>
  <meta content="text/html; charset=utf-8">
</head>
<body>
<form method="post" action="add2.asp">
<table width=600 border=1>
<tr>
 <td colspan=2>歡迎留言
<tr>
 <td >姓名:
 <td>
   <input type="text" size=10 name="n">
<tr>
 <td>想對我說的話:
 <td>
   <input type="text" size=20 name="w">
<tr>
 <td colspan=2>
 <input type="submit" value="我要留言">
</table>
</form>
</body>
</html>