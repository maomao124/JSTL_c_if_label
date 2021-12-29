<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_c_if_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/29
  Time(创建时间)： 12:42
  Description(描述)：
  JSTL <c:if> 标签类似于 Java if 语句，用于条件判断。判断条件为 true 时执行其代码块。
JSP <c:if> 标签语法如下：
<c:if test="判断条件" [var="varname"] [scope="request|page|session|application"] >
   代码块
</c:if>
其中：
test：指定判断条件，返回值为 boolean
var：可选项，判断条件的执行结果
scope：可选项，执行结果的作用域
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="age" value="22"/>
<c:if test="${age>=18}">
    <c:out value="大于18岁 你有资格投票" escapeXml="true" default=""/>
</c:if>
<c:if test="${age<18}" var="res" scope="request">
    <c:out value="你小于18岁 没有资格投票" escapeXml="true" default=""/>
</c:if>
<br/>
<c:out value="${requestScope.res}" escapeXml="true" default=""/>
<br/>

</body>
</html>
