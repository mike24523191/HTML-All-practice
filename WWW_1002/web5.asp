<!doctype html>
<html>
<head>
<meta charset="big5">
<title>無標題文件</title>
<style>

body {
	margin:0;
	background-image:url(img/bg1.png);
	background-size:cover;
	height:100vh;
	background-attachment:fixed;
	background-repeat:no-repeat;
}
.h {
	width:1100px;
	height:200px;
	margin:110px auto 40px;
}
.w {
	width:1100px;
	margin:0px auto 60px;
	display:flex;
}
.L {
	flex:2;
	color:#FFF;
	box-shadow:0px 0px 5px #fcfcfc;
	font-size:1.3rem;
	line-height:2rem;
	border-radius:15px;
	padding:50px;
	margin-top:-50px;
	margin-bottom:-50px;
}
.R {
	flex:1;
	background-color:#000;
	color:#fff;
	box-shadow:0px 0px 5px #ffffcc;
	font-size:1.2rem;
	line-height:2rem;
	opacity:0.8;
	border-radius:15px;
	padding:40px;
	margin-left:-200px;
}

.footer{
	position:fixed;
	z-index:3;
	height:200px;
	width:100%;
	left:0px;
	right:0px;
	top:0px;
	background-image:url(img/bgm.png);
}

.f{
	width:1200px;
	height:250px;
	margin:0px auto 0px;
}
.style1 {
	font-size: 2.5rem;
	font-weight: bold;
	color: #ffffcc;
	}


</style>

</head>

<script language="JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
function MM_nbGroup(event, grpName) { //v6.0
var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])?args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) { img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr) for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}

function MM_preloadImages() { //v3.0
 var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
   var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
   if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

//-->
</script>

<body>
<div class="h"><img src="img/bgm_3.png"></div>
<div class="w">
<div class="L">
<%
tf=server.MapPath("talk.txt")
set fo =server.CreateObject("scripting.filesystemobject")
set out =fo.opentextfile(tf,1)
do until out.atendofstream
a=out.readline
b=out.readline
c=out.readline
d=out.readline
e=out.readline
f=out.readline
		%>
<P>暱稱:<%=a %></P>
<p>旅遊地點:<%=b %></P>
<p>想分享的主題:<%=d %></P>
<p>分享內容:<%=e %></P>
<p>每月簡報:<%=f %></p>
<hr> 
<%
loop
out.close
%>
</div>
<div class="R">
<P class="style1">我要分享</P>
<form method="post" action="add.asp">
<P>您的暱稱:
<input type="text" size="5" name="a" required /></P>
<P>旅遊地點:
<input type="text" size="10" name="b" required /></P>
<P>電子信箱:
<input type="text" name="c" required /></P>
<P>想分享的主題:
<select name="d" required />
      <option value="名山勝水" checked>名山勝水</option>
      <option value="特色旅遊" checked>特色旅遊</option>
      <option value="名產小吃" checked>名產小吃</option>
      <option value="旅遊趣事" checked>旅遊趣事</option>  
    </select>
</P>
<p>分享內容:
<input type="text" name="e" required /></P>
<P>是否收到台灣快樂自由行每月旅遊簡報:<br>
<input type="radio" name="f"  value="是" checked>需收到
<input type="radio" name="f"  value="否" checked>不需收到</P>
<input type="submit" value="確定送出">
</form>
</div>
</div>
<div class="footer">
<div class="f">
<table border="0" cellpadding="0" cellspacing="0" width="1200">

  <tr>
   <td><img name="m_r1_c1" src="../WWW_922/images/m_r1_c1.png" width="240" height="250" border="0" alt=""></td>
   <td><a href="../WWW_922/index.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c2','images/m_r1_c2_f2.png','images/m_r1_c2_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c2','images/m_r1_c2_f3.png',1);"><img name="m_r1_c2" src="../WWW_922/images/m_r1_c2.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="../WWW_922/web1.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c3','images/m_r1_c3_f2.png','images/m_r1_c3_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c3','images/m_r1_c3_f3.png',1);"><img name="m_r1_c3" src="../WWW_922/images/m_r1_c3.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="../WWW_922/web2.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c4','images/m_r1_c4_f2.png','images/m_r1_c4_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c4','images/m_r1_c4_f3.png',1);"><img name="m_r1_c4" src="../WWW_922/images/m_r1_c4.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="../WWW_922/web3.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c5','images/m_r1_c5_f2.png','images/m_r1_c5_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c5','images/m_r1_c5_f3.png',1);"><img name="m_r1_c5" src="../WWW_922/images/m_r1_c5.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="../WWW_922/web4.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c6','images/m_r1_c6_f2.png','images/m_r1_c6_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c6','images/m_r1_c6_f3.png',1);"><img name="m_r1_c6" src="../WWW_922/images/m_r1_c6.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="../WWW_922/web5.asp" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c7','images/m_r1_c7_f2.png','images/m_r1_c7_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c7','images/m_r1_c7_f3.png',1);"><img name="m_r1_c7" src="../WWW_922/images/m_r1_c7.png" width="160" height="250" border="0" alt=""></a></td>
   <td><img src="../WWW_922/images/spacer.gif" width="1" height="250" border="0" alt=""></td>
  </tr>
</table>
</div>
</div>

</body>
</html>
