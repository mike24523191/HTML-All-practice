<!doctype html>
<html>
<head>
<meta charset="big5">
<title>�L���D���</title>
</head>
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
	font-size:1.3rem;
	line-height:2rem;
	box-shadow:0px 0px 5px #fcfcfc;
	padding:50px;
	margin-top:-50px;
	margin-bottom:-50px;
	border-radius:15px;
}
.R {
	flex:1;
	background-color:#000;
	color:#fff;
	font-size:1.2rem;
	line-height:2rem;
	opacity:0.8;
	box-shadow:0px 0px 5px #ffffcc;
	padding:40px;
	margin-left:-200px;
	border-radius:15px;
}
.footer {
	position:fixed;
	z-index:3;
	height:200px;
	width:100%;
	left:0px;
	right:0px;
	top:0;
	background-image:url(img/bgm.png);
}
.f {
	width:1200px;
	height:250px;
	margin:0px auto 0px;
}

t1 {
	font-size: 3rem;
	font-weight: bold;
	color: #FFFFCC;
}
</style>
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
<div class="h"><img src="img/W6_1.png"></div>
<div class="w">
 <div class="L">
   <%
     tf = server.MapPath("talk.txt")
     set fo = server.CreateObject("scripting.filesystemobject")
     set out = fo.opentextfile(tf,1)
     do until out.atendofstream
     a = out.readline
     b = out.readline
     c = out.readline
     d = out.readline
     e = out.readline
     f = out.readline
 
  %>
  <p>�ʺ�:<%=a %></p>
  <p>�ȹC�a�I:<%=b %></p>
  <p>���ɥD�D:<%=d %></p>
  <p>���ɤ��e:<%=e %></p>
  <hr>
  <%
  loop
  out.close
  %>
 </div>
 <div class="R">
 <p>�ڭn����</p>
 <form method="post" action="add.asp">
 <p>�z���ʺ�:
    <input type="text" size="5" name="a" required /></p>
 <p>�ȹC�a�I:
    <input type="text" size="5" name="b" required /></p>
 <p>�q�l�H�c:
    <input type="text" name="c" required /></p>
 <p>�Q���ɪ��D�D:
    <select name="d" required />
       <option value="�W�s�Ӥ�" checked>�W�s�Ӥ�</option>
       <option value="�S����" checked>�S����</option>
       <option value="�S���p�Y" checked>�S���p�Y</option>
       <option value="�ȹC���" checked>�ȹC���</option>
    </select></p>
 <p>���ɤ��e:
    <input type="text" size="30" name="e" required /></p>
 <p>�O�_����O�W�ּ֦ۥѦ�C�P�ȹC��T:<br>
    <input type="radio" value="�O" name="f" checked>�O�A�ڻݭn
    <input type="radio" value="�O" name="f" checked>���A���ݭn</p>
    <input type="submit" value="���ɥX�h">
 </div>
</div>
<div class="footer">
<div class="f">
<table border="0" cellpadding="0" cellspacing="0" width="1248">


  <tr>
   <td colspan="2"><img name="m_r1_c1" src="images/m_r1_c1.png" width="288" height="250" border="0" alt=""></td>
   <td><a href="index.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c3','images/m_r1_c3_f2.png','images/m_r1_c3_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c3','images/m_r1_c3_f3.png',1);"><img name="m_r1_c3" src="images/m_r1_c3.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="web1.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c4','images/m_r1_c4_f2.png','images/m_r1_c4_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c4','images/m_r1_c4_f3.png',1);"><img name="m_r1_c4" src="images/m_r1_c4.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="web2.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c5','images/m_r1_c5_f2.png','images/m_r1_c5_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c5','images/m_r1_c5_f3.png',1);"><img name="m_r1_c5" src="images/m_r1_c5.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="web3.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c6','images/m_r1_c6_f2.png','images/m_r1_c6_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c6','images/m_r1_c6_f3.png',1);"><img name="m_r1_c6" src="images/m_r1_c6.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="web4.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c7','images/m_r1_c7_f2.png','images/m_r1_c7_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c7','images/m_r1_c7_f3.png',1);"><img name="m_r1_c7" src="images/m_r1_c7.png" width="160" height="250" border="0" alt=""></a></td>
   <td><a href="web5.asp" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c8','images/m_r1_c8_f2.png','images/m_r1_c8_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c8','images/m_r1_c8_f3.png',1);"><img name="m_r1_c8" src="images/m_r1_c8.png" width="160" height="250" border="0" alt=""></a></td>
   <td><img src="images/spacer.gif" width="1" height="250" border="0" alt=""></td>
  </tr>
</table>
</div>
</div>
</body>
</html>
