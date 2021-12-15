<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>留言板</title>
<style>
#formwapper {
	background-color: #fff;
	height: auto;
	width: 300px;
}
form {
	background-color: #FFF;
	height: auto;
	width: 300px;
}
	
fieldest {
	background-color: #FFBFB;
	border:none
	padding-bottom: 10px;
}
h1 {
	font-family:"trebuchet MS",Helvetica,sans-serif;
	color:#000;
	font-size:16px;
}
lodel {
	width: 250px;
	display: block;
	font-size:11px;
	margin-top: 5px;
	margin-right: 0px;
	margin-bottom: 5px;
	margin-left: 0px;
  }
input {
	width: 250px;
	border:thin solid #6cf;
	margin-bottom: 10px;
}
textarea {
	width: 250px;
	border:thin solid #6cf;
	margin-bottom: 10px;
}
.btn {
	height: 20px;
	width: 50px;
	margin-left: 10px;
	font-family:"trebuchet MS",Helvetica,sans-serif;
	background-color: #6cf;
	font-weight:bold;
	float: left;
	color: #FFF;
}
</style>
</head>

<body>
<div id="formwapper">
<form action="add.asp" method="post">
<fieldset>
<h1>留言板</h1>
<label for="n">你的大名</label>
<input name="n" type="text" size="40" maxlength="100"
required><p>
<label for="email">你的信箱</label>
<input name="email" type="text" size="40" maxlength="100"
required><p>
<label for="phone">你的電話</label>
<input name="phone" type="text" size="40" maxlength="100"
required><p>
<label for="message">留言內容</label>
<textarea name="message" cols=40 rows=10 required></textarea>
<input class="btn" name="submit" type="submit" value="寄出">
</fieldset>
</form>
</div>
</body>
</html>
