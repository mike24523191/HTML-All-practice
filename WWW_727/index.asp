﻿<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>contact form</title>
</head>
<style>
#formwrapper {
	width:300px;
	height:auto;
	background-color:#FFF;
}
form {
	width:300px;
	height:auto;
	background-color:#FFF;
}
fieldest {
	background-color:#f1fbfb;
	border: none;
	padding-bottom:10px;
}
h1{
	font-family:"trebuchet MS", Helvetica, sans-serif;
	font-size:16px;
	color:#000;
}
lodel{
	width:250px;
	display:block;
	font-size:11px;
	color:#000;
	margin-top:5px;
	margin-right:0px;
	margin-bottom:5px;
	margin-left:0px;
}
input {
	width:250px;
	border:thin solid #6cf;
	margin-bottom:10px;
}
textarea {
	width:250px;
	border:thin solid #6cf;
	margin-bottom:10px;
}
.btn{
	width:50px;
	height:20px;
	font-family:"Trebuchet MS", Helvetica, sans-serif;
	color:#FFF;
	font-weight:bold;
	background-color:#6CF;
	margin-left:10px;
	float:left;
}

</style>
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
<div id="formwrapper">
<form action="add.asp" method="post">
<fieldset>
<h1>留言板</h1>
<label for="name">你的大名:</label>
<input name="n" type="text" size="40" maxlength="100" required><p>

<label for="message">留言內容</label>
<textarea name="w" cols="40" rows="10" required></textarea>
<input class="btn" name="submit" type="submit" value="寄出">
</fieldset>
</form>
</div>

</body>
</html>
