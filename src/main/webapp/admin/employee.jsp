<%--
  Created by IntelliJ IDEA.
  User: lzw
  Date: 2020/4/14
  Time: 下午9:15
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
        url: '${pageContext.request.contextPath}/users/employees',
        method: 'GET',
        striped: true,
        pagination: true,
        sortable: true,
        sortOrder: "asc",
        sidePagination: "client",
        clickToSelect: true,
        showRefresh: true,
        lineHeight:1,
        showColumns: true,
        showToggle: true,
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
            field: 'id',
            title: '操作',
            width: 120,
            align: 'center',
            valign: 'middle',
            formatter: actionFormatter
        },]
    });

    function actionFormatter(value, row, index) {
        var id = value;
        var result = "";
        result += "<a href='javascript:;' class='btn btn-xs green' onclick=\"EditViewById('" + id + "', view='view')\" title='查看'><span class='glyphicon glyphicon-search'></span></a>";
        result += "<a href='javascript:;' class='btn btn-xs blue' onclick=\"EditViewById('" + id + "')\" title='编辑'><span class='glyphicon glyphicon-pencil'></span></a>";
        result += "<a href='javascript:;' class='btn btn-xs red' onclick=\"DeleteByIds('" + id + "')\" title='删除'><span class='glyphicon glyphicon-remove'></span></a>";
        return result;
    }
</script>

<%@include file="footer.jsp" %>
</body>
</html>
