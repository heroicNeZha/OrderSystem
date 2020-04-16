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
    <div id="toolbar" class="btn-group">
        <button id="btn_add" type="button" class="btn btn-default">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
        </button>
        <button id="btn_delete" type="button" class="btn btn-default">
            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
        </button>
    </div>
    <table class="table table-striped" data-toggle="table" id="userTable"></table>
</div>
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true"> 
    <div class="modal-dialog">
        <div class="modal-content">           
            <div class="modal-header">               
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>           
            </div>
            <div class="modal-body">在这里添加一些文本</div>
            <div class="modal-footer"> 
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<script>
    $('#userTable').bootstrapTable({
        url: '${pageContext.request.contextPath}/user/employee',
        method: 'GET',
        // striped: true,
        toolbar: '#toolbar',
        idField: 'id',
        pagination: true,
        sortable: true,
        sortOrder: "asc",
        sidePagination: "client",
        clickToSelect: true,
        showRefresh: true,
        search: true,
        showToggle: true,
        columns: [{
            checkbox: true,
            visible: true
        }, {
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
                type: "post",
                url: "user/employee/",
                data: {_method: "PUT", user: row},
                dataType: 'JSON',
                success: function (data, status) {
                    if (status == "success") {
                        alert('提交数据成功');
                    }
                },
                error: function () {
                    alert('编辑失败');
                },
                complete: function () {
                }
            });
        }
    });

    function actionFormatter(value, row, index) {
        var id = value;
        var result = "";
        result += "<a href='javascript:;' class='btn btn-xs green' title='查看'><span class='glyphicon glyphicon-search'></span></a>";
        result += "<a href='javascript:;' class='btn btn-xs blue' title='编辑'><span class='glyphicon glyphicon-pencil'></span></a>";
        result += "<a href='javascript:;' class='btn btn-xs red' title='删除'><span class='glyphicon glyphicon-remove'></span></a>";
        return result;
    }
</script>

<%@include file="footer.jsp" %>
</body>
</html>
