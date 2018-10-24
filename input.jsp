<%@page  contentType="text/html; charset=gb2312"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    <meta http-equiv="content-Type" content="text/html;charset=gb2312" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
function setCookie(key,value,t){
    var  myDate=new Date();
    myDate.setDate(myDate.getDate()+t);
    document.cookie=key+"="+value+ ";expires="+myDate.toGMTString();
}

function getCookie(key){
    var arr1 = document.cookie.split('; ');
    for (var i=0; i<arr1.length; i++) {
        var arr2 = arr1[i].split('=');
        if ( arr2[0] == key ) {
            return decodeURI(arr2[1]);
        }
    }
}

function removeCookie(key) {
    setCookie(key, '', -1);
}
 </script>

 <script>
window.onload = function() {

    var oUsername = document.getElementById('username');
    var oLogin = document.getElementById('login');
    var oDel = document.getElementById('del');

    if ( getCookie('username') ) {
        oUsername.value = getCookie('username');
    }

    oLogin.onclick = function() {
        alert('登录成功');
        setCookie('username', oUsername.value, 5);
    };

    oDel.onclick = function() {
        removeCookie('username');
        oUsername.value = '';
    };
};
function Changecolor(bcolor){
    document.getElementById("body").style.background=bcolor;
    }
 </script>
  </head>
  
  <body id="body">
  
   
 <form name="form1" method="post"action="index.jsp">
   <center>小学生的四则运算</center><br>
   <hr width=500 height=10>
   
   <table align="center">
   <tr><td><input type="text" value="改变颜色"maxlength="3">
   <input onclick="Changecolor('blue')" type="button"  value="蓝">
   <input onclick="Changecolor('red')" type="button"  value="红">
   <input onclick="Changecolor('yellow')" type="button" value="黄"></td></tr>
<tr>
<td>用户名：<input type="text" id="username">
        <input type="button" value="登录" id="login"><input type="button" value="删除" id="del"></td>
       </tr>
  <tr>  <td>请输入要出题的题目数量：（最多不能超过5个题目）</td>
   <td><input name="shuliang" type="text" id="shuliang"maxlength="5"> </td> </tr>  
</table>
    <center><input type="submit"value="开始答题"></center>   
    </form>
  </body>
</html>