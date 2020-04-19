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
    <c:choose>
        <c:when test="${result == 'SUCCESS'}">
            <div class="alert alert-success" role="alert">插入成功</div>
        </c:when>
        <c:when test="${result == null}">

        </c:when>
        <c:otherwise>
            <div class="alert alert-danger" role="alert"><c:out value="${result}"/></div>
        </c:otherwise>
    </c:choose>
    <div id="toolbar" class="btn-group">
        <button id="btn_add" type="button" class="btn btn-default" data-toggle="modal" data-target="#addModal">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
        </button>
        <button id="btn_delete" type="button" class="btn btn-default">
            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
        </button>
    </div>
    <table class="table table-striped" data-toggle="table" id="userTable"></table>
</div>
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form role="form" class="form-horizontal" id="addEmployee" method="post"
                  action="${pageContext.request.contextPath}/user/employee/">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">新增 员工</h4>
                </div>
                <div class="modal-body">
                    <div style="margin-left: 10%;margin-right:10% ">
                        <div class="form-group">
                            <label for="name">用户名</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名名">
                        </div>
                        <div class="form-group">
                            <label for="name">密码</label>
                            <input type="password" class="form-control" id="password" name="password"
                                   placeholder="请输入密码">
                        </div>
                        <div class="form-group">
                            <label for="name">姓名</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名">
                        </div>
                        <div class="form-group">
                            <label for="name">手机号</label>
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入手机号">
                        </div>
                        <div class="form-group">
                            <label for="name">地址</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="请输入地址">
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-primary">提交新增</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script>
    $table = $('#userTable');
    $table.bootstrapTable({
        url: '${pageContext.request.contextPath}/user/employee',
        method: 'GET',
        // striped: true,
        toolbar: '#toolbar',
        idField: 'id',
        pagination: true,
        sidePagination: "client",
        clickToSelect: false,
        showRefresh: true,
        search: true,
        showToggle: true,
        columns: [{
            checkbox: true,
            visible: true
        },
            {
                field: "index",
                title: "ID",
                align: "center",
                edit: false,
                formatter: function (value, row, index) {
                    return row.index = index + 1;
                }
            },
            {
                field: 'username',
                title: '用户名',
                editable: {
                    type: 'text',
                    title: '用户名',
                    validate: function (v) {
                        if (!v) return '用户名不能为空';
                    }
                }
            }, {
                field: 'name',
                title: '姓名',
                editable: {
                    type: 'text',
                    title: '姓名',
                    validate: function (v) {
                        if (!v) return '姓名不能为空';
                    }
                }
            }, {
                field: 'phone',
                title: '手机号',
                editable: {
                    type: 'text',
                    title: '手机号'
                }
            }, {
                field: 'address',
                title: '地址',
                editable: {
                    type: 'text',
                    title: '地址'
                }
            }, {
                field: 'id',
                title: '操作',
                width: 120,
                align: 'center',
                valign: 'middle',
                formatter: actionFormatter
            },],
        onEditableSave: function (field, row, oldValue, $el) {
            $.ajax({
                type: "put",
                url: "${pageContext.request.contextPath}/user/employee/",
                contentType: "application/json",
                data: JSON.stringify(row),
                dataType: 'JSON',
                success: function (data) {
                    if (data.result == "SUCCESS") {
                        alert('编辑成功');
                    } else {
                        alert('编辑失败,错误原因:' + data.result);
                    }
                },
                error: function () {
                    alert('编辑失败');
                }
            });
        }
    });

    function actionFormatter(value, row, index) {
        var id = value;
        var result = "";
        result += "<a href='javascript:;' class='btn btn-xs green' title='查看'><span class='glyphicon glyphicon-search'></span></a>";
        result += "<a href='javascript:;' class='btn btn-xs blue' title='编辑'><span class='glyphicon glyphicon-pencil'></span></a>";
        result += "<a href='javascript:;' class='btn btn-xs red' title='删除' onclick='deleteUser(" + id + ")'><span class='glyphicon glyphicon-remove'></span></a>";
        return result;
    }

    function deleteUser(id) {
        $.ajax({
            type: "delete",
            url: "${pageContext.request.contextPath}/user/employee/",
            contentType: "application/json",
            data: JSON.stringify(id),
            dataType: 'JSON',
            success: function (data) {
                if (data.result == "SUCCESS") {
                    alert('删除成功');
                } else {
                    alert('删除失败,错误原因:' + data.result);
                }
                $table.bootstrapTable("load", {});
            },
            error: function () {
                alert('删除失败');
            }
        });
    }
</script>

<%@include file="footer.jsp" %>
</body>
</html>
