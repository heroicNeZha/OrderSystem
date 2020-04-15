<%--
  Created by IntelliJ IDEA.
  User: lzw
  Date: 2020/4/15
  Time: 下午8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.util.*" %>
<html>
<head>
    <title>后端</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@include file="header.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
    <table class="table table-striped" data-toggle="table" id="userTable"></table>
</div>
<script>
    $('#userTable').bootstrapTable({
        url: '${pageContext.request.contextPath}/users/customers',
        method: 'GET',
        striped: true,
        pagination: true,
        sortable: true,
        sortOrder: "asc",
        sidePagination: "client",
        clickToSelect: true,
        showRefresh: true,
        columns: [{
            checkbox: true,
            visible: true
        }, {
            field: 'id',
            title: 'ID'
        }, {
            field: 'name',
            title: '姓名'
        }, {
            field: 'phone',
            title: '手机号'
        }, {
            field: 'address',
            title: '地址'
        }, {
            field: 'vip_date',
            title: '会员截至日期'
        }]
    })
</script>

<%@include file="footer.jsp" %>
</body>
</html>

