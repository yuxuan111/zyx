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
    
    <title>结果</title>
    <meta http-equiv="content-Type" content="text/html;charset=gb2312" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <div style="position:absolute;z-index:-1;width:100%;height:100%">
			<img src="zhu.jpg" width="100%" height="100%" />
	</div>
   <%
    String[] s= (String[])session.getAttribute("v1");
    String[] answer= (String[])session.getAttribute("v2");
    String[] daan=new String[s.length];
    int count=0;//正确答案的个数
    for(int i=0;i<s.length;i++)
    {
    daan[i]=request.getParameter("name"+i);
        out.print("运算式为：   "+"     ");
        out.print(s[i]+"  ");
        out.print("您的输入结果为：    "+"     ");
        
        out.print(daan[i]+"   ");
         out.print("正确结果为：  "+"     ");
        out.print(answer[i]);
        if(Integer.parseInt(daan[i])==Integer.parseInt(answer[i]))
        {
            out.print("恭喜你答对了！"+"<br>");
            count++;
        }
        else
        {
            out.print("很遗憾，你回答错了！"+"<br>");
        }
         }
        out.print("<br>");
    out.print("你一共答对的题目数：  ");
    out.print(count+"<br>");
    out.print("你一共答错的题目数：  ");
    out.print(s.length-count);
   
    
%>
<form name="form2"method="post"action="input.jsp" >
<input type="submit"value="重新做题">
</form>
  </body>
</html>
