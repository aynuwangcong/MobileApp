<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
    function dormManagerDelete(dormManagerId) {
        if(confirm("您确定要删除这个用户吗？")) {
            window.location="${pageContext.request.contextPath}/users/delete?user_id="+dormManagerId;
        }
    }

</script>
<div class="data_list">
    <div class="data_list_title">
        用户信息管理
    </div>
    <button style="padding-bottom: 0;margin-bottom: 0;float: left" class="btn btn-success" type="button" style="margin-right: 50px;" onclick="javascript:window.location='${pageContext.request.contextPath}/users/preAdd?user_id=null'">添加</button>

    <form class="form-search" action="${pageContext.request.contextPath}/users/compound?pageStartIndex=${pageStartIndex}" method="post" style="float: right" >
        <table class="data_search" style="float: right">

            <select id="searchType" name="searchType" style="width: 80px;" onchange="this">
                <option value="user_name">姓名</option>
                <option value="department">部门</option>
                <option value="duty">职位</option>
            </select>
            <input name="Text" type="text" value="${Text}" style="width:120px;height: 30px;" class="input-medium search-query" >

            <span> 工号:</span>
            &nbsp;<input name="user_id" type="text" value="${users1.user_id}" style="width:120px;height: 30px;" class="input-medium search-query" >
            <span> 性别:</span>
            &nbsp;<input name="user_sex" type="text" value="${users1.user_sex}" style="width:120px;height: 30px;" class="input-medium search-query" >
            <span> 年龄:</span>
            &nbsp;<input name="user_age" type="text" value="${users1.user_age}" style="width:120px;height: 30px;" class="input-medium search-query" >
            &nbsp;<button type="submit" class="btn btn-info" onkeydown="if(event.keyCode==13) myForm.submit()">搜索</button>
        </table>
    </form>
    <div>
        <table class="table table-hover table-striped table-bordered">
            <tr>
                <th>工号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>年龄</th>
                <th>部门</th>
                <th>职位</th>
                <th>电话</th>
                <th>操作</th>
            </tr>
            <c:forEach  varStatus="i" var="c" items="${contactorList}">
                <tr>
                    <td>${c.user_id}</td>
                    <td>${c.user_name}</td>
                    <td>${c.user_sex}</td>
                    <td>${c.user_age}</td>
                    <td>${c.department}</td>
                    <td>${c.duty}</td>
                    <td>${c.mobil_phone}</td>
                    <td><button class="btn btn-mini btn-info" type="button" onclick="javascript:window.location='${pageContext.request.contextPath}/users/preAdd?user_id=${c.user_id}'">修改</button>&nbsp;
                        <button class="btn btn-mini btn-danger" type="button" onclick="dormManagerDelete(${c.user_id})">删除</button></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div align="center"><font color="red">${error }</font></div>
    <div class="pagination pagination-centered">
        <ul class="pagination pagination-lg">
            <li><a href="${pageContext.request.contextPath}/users/querystudent?pagenum=1">首页</a></li>
            <c:choose>
                <c:when test="${page.pagenum== 1 }">
                    <li><a href="#">上一页</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${pageContext.request.contextPath}/users/querystudent?pagenum=${page.pagenum-1}">上一页</a></li>
                </c:otherwise>
            </c:choose>

            <li><a href="${pageContext.request.contextPath}/users/querystudent?pagenum=1">1</a></li>
            <li><a href="${pageContext.request.contextPath}/users/querystudent?pagenum=2">2</a></li>
            <li><a href="${pageContext.request.contextPath}/users/querystudent?pagenum=3">3</a></li>

            <c:choose>
                <c:when test="${page.pagenum>=page.totalPages}">
                    <li><a href="#">下一页</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${pageContext.request.contextPath}/users/querystudent?pagenum=${page.pagenum+1}">下一页</a></li>
                </c:otherwise>
            </c:choose>

            <li><a href="${pageContext.request.contextPath}/users/querystudent?pagenum=${page.totalPages}">尾页</a></li>
        </ul>

    </div>
</div>