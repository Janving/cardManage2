<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="s" uri="/struts-tags" %> 
    
    <%
    String path=request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/common.css" type="text/css" rel="stylesheet">
<style type="text/css">
    table{
    text-align:center;
    border-collapse:collapse;
    }
    .bgcolor{
    background-color:#F08080;
    }
    </style>
<script type="text/javascript">
    function changeColor(obj){
    	obj.className="bgcolor";
    }
    function changeColor1(obj){
    	obj.className="";
    }
    </script>
</head>
<body>
     <br>
     <table border="1" bordercolor="PathGreen">
         <tr>
             <th width="200px">名片ID</th>
             <th width="200px">名称</th>
             <th width="250px">单位</th>
             <th width="200px">详情</th>
          </tr>
          <s:iterator value="allCards" var="card">
          <tr onmousemove ="changeColor(this)" onmouseout="changeColor1(this)">
              <td><s:property value="id"/></td>
               <td><s:property value="name"/></td>
               <td><s:property value="company"/></td>
               <td><a href="card/selectACard.action?id=<s:property value="id"/>&act=updateAcard" target="center">修改</a></td>
           </tr>
           </s:iterator>
           <tr>
               <td colspan="4" align="right">
               &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;共${totalCount}条记录 &nbsp; &nbsp;
                第${pageCur}页 &nbsp; &nbsp;
                <s:url var="url_pre" value="card/queryCard.action">
                    <s:param name="pageCur" value="pageCur-1"></s:param>
                    <s:param name="act" value="'updateSelect'"></s:param>
                </s:url>
                 <s:url var="url_next" value="card/queryCard.action">
                    <s:param name="pageCur" value="pageCur+1"></s:param>
                    <s:param name="act" value="'updateSelect'"></s:param>
                </s:url>
                
                
                <s:a href="%{url_pre}">上一页</s:a>
                <s:a href="%{url_next}">下一页</s:a>
                </td>
                </tr>
     </table>



</body>
</html>