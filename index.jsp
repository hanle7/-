<%@page import="com.three.idao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.three.dao.*"%>
<%@page import="java.util.*"%>
<%@page import="com.three.bean.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css" media="all">
.d1{width:1000px;height:300px;overflow:hidden;border:#666666 2px solid;background-color:#000000;position:relative;}
.d2{width:1000px;height:300px;overflow:hidden;}
.loading{width:443px;border:#666666 2px solid;background-color:#000000;color:#FFCC00;font-size:12px;height:179px;text-align:center;padding-top:30px;font-family:Verdana, Arial, Helvetica, sans-serif;font-weight:bold;}
.num_list{position:absolute;width:100%;left:0px;bottom:-1px;background-color:#000000;color:#FFFFFF;font-size:12px;padding:4px 0px;height:20px;overflow:hidden;}
.num_list span{display:inline-block;height:16px;padding-left:6px;}
img{border:0px;}
ul{display:none;}
.button{position:absolute; z-index:1000; right:0px; bottom:2px; font-size:13px; font-weight:bold; font-family:Arial, Helvetica, sans-serif;}
.b1,.b2{background-color:#666666;display:block;float:left;padding:2px 6px;margin-right:3px;color:#FFFFFF;text-decoration:none;cursor:pointer;}
.b2{color:#FFCC33;background-color:#FF6633;}

marquee {
	color: red;
}

.div1 {
	background: #0F6;
	height: 250px;
}

.div2 {
	
	height: 250px;
}

.div3 {
	
	height: 250px;
}

.div4 {
	
	height: 1600px;
}

.div4 p {
	text-indent: 2em;
}

.div5 {
	
	width: 32%;
	height: 50px;
	margin:auto;
}

.div5 li {
	float: left;
	list-style: none;
	font-size: 19px;
	line-height: 50px;
}

.smalldiv {
	
	width: 19.85%;
	height: 250px;
	float: left;
	border: 1px solid #dcd8d6;
}

.smalldiv li {
	line-height: 50px;
}

span {
	font-size: 24px;
}

 a:link{text-decoration:none;
 }
 
 a:visited{
 color:#000000;
 text-decoration:none;
 }
 
 a:hover{
  color:#000000;
 text-decoration:none;
 }
 
 a:active{
  color:#000000;
 text-decoration:none;
 }
 
</style>
<script language="javascript" type="text/javascript" type="text/jscript">

var int=setInterval(clock, 100)
function clock(){            //显示时间
     var time=new Date();
     document.getElementById("clock").value = time;
    }

var s=function(){
var interv=2000; //切换间隔时间
var interv2=10; //切换速速
var opac1=80; //文字背景的透明度
var source="fade_focus" //焦点轮换图片容器的id名称
//获取对象
function getTag(tag,obj){if(obj==null){return document.getElementsByTagName(tag)}else{return obj.getElementsByTagName(tag)}}
function getid(id){return document.getElementById(id)};
var opac=0,j=0,t=63,num,scton=0,timer,timer2,timer3;var id=getid(source);id.removeChild(getTag("div",id)[0]);var li=getTag("li",id);var div=document.createElement("div");var title=document.createElement("div");var span=document.createElement("span");var button=document.createElement("div");button.className="button";for(var i=0;i<li.length;i++){var a=document.createElement("a");a.innerHTML=i+1;a.onclick=function(){clearTimeout(timer);clearTimeout(timer2);clearTimeout(timer3);j=parseInt(this.innerHTML)-1;scton=0;t=63;opac=0;fadeon();};a.className="b1";a.onmouseover=function(){this.className="b2"};a.onmouseout=function(){this.className="b1";sc(j)};button.appendChild(a);}
//控制图层透明度
function alpha(obj,n){if(document.all){obj.style.filter="alpha(opacity="+n+")";}else{obj.style.opacity=(n/100);}}
//控制焦点按钮
function sc(n){for(var i=0;i<li.length;i++){button.childNodes[i].className="b1"};button.childNodes[n].className="b2";}
title.className="num_list";title.appendChild(span);alpha(title,opac1);id.className="d1";div.className="d2";id.appendChild(div);id.appendChild(title);id.appendChild(button);
//渐显
var fadeon=function(){opac+=5;div.innerHTML=li[j].innerHTML;span.innerHTML=getTag("img",li[j])[0].alt;alpha(div,opac);if(scton==0){sc(j);num=-2;scrolltxt();scton=1};if(opac<100){timer=setTimeout(fadeon,interv2)}else{timer2=setTimeout(fadeout,interv);};}
//渐隐
var fadeout=function(){opac-=5;div.innerHTML=li[j].innerHTML;alpha(div,opac);if(scton==0){num=2;scrolltxt();scton=1};if(opac>0){timer=setTimeout(fadeout,interv2)}else{if(j<li.length-1){j++}else{j=0};fadeon()};}
//滚动文字
var scrolltxt=function(){t+=num;span.style.marginTop=t+"px";if(num<0 && t>3){timer3=setTimeout(scrolltxt,interv2)}else if(num>0 && t<62){timer3=setTimeout(scrolltxt,interv2)}else{scton=0}};
fadeon();
}
//初始化
window.onload=s;
</script>
<title>THREE首页</title>
</head>

<body>
<p>
			<blockquote>
			<blockquote>
				<blockquote>
					<p>
						<img src="img/three.png" width="479" height="90" />
<%
NJAUManage mng=(NJAUManage)session.getAttribute("logined_manage");
NJAUUser u=(NJAUUser)session.getAttribute("logined_user");

if(mng!=null){
	
%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="allcollege.jsp" target="_blank"><font face="幼圆" color="#000033">管理员管理</font></a>
						<%
							} else {
								if (u != null) {
						%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="usermng.jsp"><font face="幼圆" color="#000033">个人信息</font></a>
						<a href="exit.jsp"><font face="幼圆" color="#000033">退出登录</font></a>


						<%
							} else if (u == null) {
						%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="userregist.jsp"><font face="幼圆" color="#000033">请注册</font></a> <a href="userlogin.jsp"><font face="幼圆" color="#000033">请登录</font></a>

						<%
							}
							}
						%>


					</p>
				</blockquote>
			</blockquote>
		</blockquote>
	<blockquote><blockquote><blockquote>		
<div id="fade_focus" text-align:center >
    <div class="loading"></div>
    <ul>
      <li><target="_blank"><img src="img/jxl1.jpg" width="1000" height="300" alt="教学楼" align="middle"/></a></li>
      <li><target="_blank"><img src="img/tll1.jpg" width="1000" height="300" alt="桃李廊" align="middle"/></a></li>
      <li><target="_blank"><img src="img/nm1.jpg" width="1000" height="300" alt="主楼夜景" align="middle"/></a></li>
      <li><target="_blank"><img src="img/bj.jpg" width="1000" height="300" alt="主楼" align="middle"/></a></li>
    </ul>
</div>
   </blockquote> </blockquote> </blockquote>

<p>
</p>
	

	
	<blockquote>
		<blockquote>
			<blockquote>
				<blockquote>
					<p></p>
				</blockquote>
			</blockquote>
		</blockquote>
	</blockquote>
	<div align="center">
		<table border="0" align="center" width="80%" >
			<%
				ICollegeDao cdao = new CollegeDao();
				List<NJAUCollege> colleges = cdao.getAllCollege();
				for (NJAUCollege c : colleges) {
			%>
			<tr bgcolor="#F5F5DC">
				<td width="200" ><a href="college.jsp?cid=<%=c.getCid() %>"><font size="5" face="黑体" color="#000033"><%=c.getCname()%></font></a></td>
			<td>
		
			<table>
				<%
					IInvitationDao idao = new InvitationDao();
						List<NJAUInvitation> invitations = idao.getGoodOfCollegeInvitation(c.getCid());
						for (NJAUInvitation in : invitations) {
				%>
				<tr><td><a href="invitation.jsp?inid=<%=in.getInid() %>"><font face="幼圆" color="#000033">*<%=in.getIntitle() %></font></a></td></tr>


			
			<%
						}
						
						%>
						</table>
						<hr />
						</td></tr>
						<%
				}
			%>
			
		</table>
	<embed src="music/cqdw.mp3" width="200" height="60" autostart="true" loop="true" hidden="true"></embed>
	</div>
	<p align="center">&nbsp;</p>
	<p>&nbsp;</p>
	<div cmsid="82828445" class="footer">
		<div cmsid="89863089" id="footer">
			<div cmsid="93163442" class="footer_inner">
				<span class="copyright"
					style="line-height: 20px; padding: 10px 0 0 0;">Copyright
					&copy 2013 THREE工作室版权所有 All Rights Reserved. <br /> 地址：中国南京卫岗1号
					邮编：210095 联系电话：15380822001
				</span>
				<div cmsid="61399860" class="fr_links">
					<ul>
						<li><a href="" target="_blank">论坛地图</a></li>

						<li><a href="" target="_blank">论坛评价</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
