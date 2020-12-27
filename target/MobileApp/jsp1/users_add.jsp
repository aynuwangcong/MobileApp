<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
    function checkForm(){
        var user_id=document.getElementById("user_id").value;
        var user_name=document.getElementById("user_name").value;
        var user_age=document.getElementById("user_age").value;
        var user_sex=document.getElementById("user_sex").value;
        var department=document.getElementById("department").value;
        var duty=document.getElementById("duty").value;
        var mobil_phone=document.getElementById("mobil_phone").value;
        if(user_id==""||user_name==""||user_age==""||user_sex==""||department==""||duty==""||mobil_phone==""){
            document.getElementById("error").innerHTML="必填信息填写不完整！";
            return false;
        }
        return true;
    }

    $(document).ready(function(){
        $("ul li:eq(1)").addClass("active");
    });
</script>
<style>
    #data_form{
        overflow: hidden;
        padding-left: 155px;
        padding-right: 155px;
    }
    #save{
        margin-top: 325px;
    }

</style>
<div class="data_list">
    <div class="data_list_title">
        <c:choose>
            <c:when test="${users.user_id!=null }">
                修改用户
            </c:when>
            <c:otherwise>
                添加用户
            </c:otherwise>
        </c:choose>
    </div>
    <form action="${pageContext.request.contextPath}/users/add" method="post" onsubmit="return checkForm()">
        <div id="data_form" class="data_form"  align="left">
            <input type="hidden" id="student" name="method" value="${users.id}"/>
            <table style="float: left">
                <div id="xx">
                <tr>
                    <td><font color="red">*</font>工号：</td>
                    <td><input type="text" id="user_id"  name="user_id" value="${users.user_id}"  style="margin-top:5px;height:30px;" /></td>
                </tr>
                <tr>
                    <td><font color="red">*</font>姓名：</td>
                    <td><input type="text" id="user_name"  name="user_name" value="${users.user_name }"  style="margin-top:5px;height:30px;" /></td>
                </tr>
                <tr>
                    <td><font color="red">*</font>性别：</td>
                    <td>
                        <select id="user_sex" name="user_sex" value="${users.user_sex}" style="width: 90px;">
                            <option>${users.user_sex }</option>
                            <option>男</option>
                            <option>女</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><font color="red">*</font>年龄：</td>
                    <td><input type="text" id="user_age"  name="user_age" value="${users.user_age }" style="margin-top:5px;height:30px;" /></td>
                </tr>
                    <tr>
                        <td><font color="red">*</font>部门：</td>
                        <td>
                            <select id="department" name="department" value="${users.department}" style="width: 90px;">
                                <option>财务部</option>
                                <option>信息部</option>
                                <option>监管部</option>
                                <option>组织部</option>
                                <option>宣传部</option>
                            </select>
                        </td>
                    </tr>

                <tr>
                    <td><font color="red">*</font>职位：</td>
                    <td><input type="text" id="duty"  name="duty" value="${users.duty }" style="margin-top:5px;height:30px;" /></td>
                </tr>
                <tr>
                    <td><font color="red">*</font>电话：</td>
                    <td><input type="text" id="mobil_phone" name="mobil_phone" value="${users.mobil_phone }" style="margin-top:5px;height:30px;" /></td>
                </tr>
                </div>
            </table>

            <table style="float: right">
                <div id="yy">
                    <tr>
                        <td>邮箱：</td>
                        <td><input type="text" id="mail"  name="mail" value="${users.mail}"  style="margin-top:5px;height:30px;" /></td>
                    </tr>
                    <tr>
                        <td>家庭电话：</td>
                        <td><input type="text" id="family_phone"  name="family_phone" value="${users.family_phone }"  style="margin-top:5px;height:30px;" /></td>
                    </tr>
                    <tr>
                        <td>办公电话：</td>
                        <td><input type="text" id="office_phone"  name="office_phone" value="${users.office_phone }" style="margin-top:5px;height:30px;" /></td>
                    </tr>
                    <tr>
                        <td>生日：</td>
                        <td><input type="text" id="birthday"  name="birthday" value="${users.birthday }" style="margin-top:5px;height:30px;" /></td>
                    </tr>
                    <tr>
                        <td>MSN：</td>
                        <td><input type="text" id="MSN"  name="MSN" value="${users.MSN }" style="margin-top:5px;height:30px;" /></td>
                    </tr>
                    <tr>
                        <td>地址：</td>
                        <td><input type="text" id="address"  name="address" value="${users.address }" style="margin-top:5px;height:30px;" /></td>
                    </tr>
                    <tr>
                        <td>备注：</td>
                        <td><input type="text" id="remark" name="remark" value="${users.remark }" style="margin-top:5px;height:30px;" /></td>
                    </tr>
                </div>
            </table>
            <div id="save" align="center">
                <input type="submit" class="btn btn-primary" value="保存"/>
                &nbsp;<button class="btn btn-primary" type="button" onclick="javascript:history.back()">返回</button>
            </div>
            <div align="center">
                <font id="error" color="red">${error }</font>
            </div>
        </div>

    </form>
</div>