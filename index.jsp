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
 
    <title>题目</title>
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
 var second =5; 
// 剩余秒数 
function showTime(){

 document.getElementById("myTime").innerText=second.toString()-1;
 second--;
 if((second==0))
 alert("时间已到，不能答题。");
 }
  //然后写一个定时器 
  setInterval("showTime()",1000);     
  </script>
  </head>
  
  <body>
  <div style="position:absolute;z-index:-1;width:100%;height:100%">
			<img src="a.jpg" width="100%" height="100%" />
	</div>	
  <center>答题时间为120秒，剩余时间为<span id="myTime"></span>秒</center> 
 <% 
        int answer; //题目的答案
        String j=request.getParameter("shuliang");//运算式的数量
        
        int shuliang= Integer.valueOf(j);
        String[] str=new String[shuliang];//用于连接输出字符
        String[] daan=new String[shuliang];//输入的答案
        String[] answer1=new String[shuliang]; //正确答案       
        for(int i=0;i<shuliang;i++)
        {
        int number=(int)(Math.random()*2+1);        
            daan[i]="name"+i;
            str[i]=""+(int)(Math.random()*100+1); //随机产生第一个数
            if(number==1){
            int num=(int)(Math.random()*4+2);
            int jisuan[]=new int[num+1];//用于保存中间结果
            jisuan[0]=Integer.parseInt(str[i]);
            char yunsuanfu[]=new char[num+1];
            for(int l=1;l<num;l++)
            {
                int fuhao= (int)(Math.random()*4);//随机产生符号
                int num2=(int)(Math.random()*100+1);
                jisuan[l]=num2;
                if(fuhao==0)
                {
                    str[i]+="+"+num2;
                    yunsuanfu[l]='+';
                }
                if(fuhao==1)
                {
                    str[i]+="-"+num2;
                    yunsuanfu[l]='-';
                }
                if(fuhao==2)
                {
                    str[i]+="*"+num2;
                    yunsuanfu[l]='*';
                }
                if(fuhao==3)
                {
                    str[i]+="/"+num2;
                    yunsuanfu[l]='/';
                }
            }
            
            for(int l=1;l<num;l++)
            {
                if(yunsuanfu[l]=='*')
                {              
                    jisuan[l]=jisuan[l-1]*jisuan[l];
                    jisuan[l-1]=0;
                    yunsuanfu[l]=yunsuanfu[l-1];
                }
                else if(yunsuanfu[l]=='/')
                {
                    jisuan[l]=jisuan[l-1]/jisuan[l];
                    jisuan[l-1]=0;
                    yunsuanfu[l]=yunsuanfu[l-1];
                }
            }
            for(int l=1;l<num;l++)
            {
                if(yunsuanfu[l]=='+')
                {
                    jisuan[l]=jisuan[l-1]+jisuan[l];
                    jisuan[l-1]=0;
                }
                else if(yunsuanfu[l]=='-')
                {
                    jisuan[l]=jisuan[l-1]-jisuan[l];
                    jisuan[l-1]=0;
                }
            }
            answer1[i]=""+jisuan[num-1];
            out.print(str[i]);}                     
            else{
              int []sum=new int[10];;int [] a=new int[10];
              a[1]=(int)(Math.random()*10+1);
              sum[1]=a[1];int shu;
             
             str[i]+=a[1]+"!";
 if(a[1]==1)
 { 
 answer1[i]=""+a[1];
 }
 else{
 for(shu=1;shu<a[1];shu++)
 {
 sum[1]=sum[1]*(a[1]-shu);
 }
 answer1[i]=""+sum[1];
 }
         out.print(a[1]+"!");   }           
%>
<form name="form2"method="post"action="Result.jsp" >
 <br>请输入你的答案：<input name="<%=daan[i] %>" type="text" id="daan"maxlength="5">
 <br>
 <%
     }
%>
<%  
    session.setAttribute("v1",str);
   session.setAttribute("v2",answer1);
%>
<input type="submit"value="提交问题">
</form>  
  </body>
</html>
