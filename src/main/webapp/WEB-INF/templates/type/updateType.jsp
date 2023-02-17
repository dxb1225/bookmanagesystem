<!--<%@ page contentType="text/html;charset=UTF-8" language="java" %>-->
<!--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>-->
<!--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>-->
<!--<%@ page isELIgnored="false" %>-->

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <title>修改类型信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <style>
        body {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
<div class="layui-form layuimini-form">
    <input type="hidden" name="id"  value="${info.id}">
    <div class="layui-form-item">
        <label class="layui-form-label required">类型名称</label>
        <div class="layui-input-block">
            <input type="text" name="name" lay-verify="required" lay-reqtext="类型名称不能为空" placeholder="请输入类型名称" value="${info.name}" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注信息</label>
        <div class="layui-input-block">
            <textarea name="remarks" class="layui-textarea" > ${info.remarks}</textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" lay-submit lay-filter="saveBtn">确认修改</button>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form'], function () {
        var form = layui.form,
            layer = layui.layer,
            $ = layui.$;

        form.on('submit(saveBtn)', function () {
            layer.msg("请联系QQ:1919066898 购买此系统");
        });
    });
</script>
</body>
</html>