<%--
  Created by IntelliJ IDEA.
  User: lzw
  Date: 2020/4/15
  Time: 下午3:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span
                    style="color: #c41230; ">麦肯基订餐</span></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 员工中心<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">添加员工</a></li>
                        <li><a href="#">员工信息</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span>
                        餐品中心<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">添加餐品</a></li>
                        <li><a href="#">餐品管理</a></li>
                        <li><a href="#">添加类别</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><span class="glyphicon glyphicon-list" aria-hidden="true"></span> 订单中心<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">订单信息</a></li>
                        <li><a href="#">评价信息</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                        会员中心<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">添加会员</a></li>
                        <li><a href="#">会员管理</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">你好,管理员 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">个人信息</a></li>
                        <li><a href="#">注销</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
