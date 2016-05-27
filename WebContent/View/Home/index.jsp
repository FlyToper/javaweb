<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../../Public/images/LOGO2.jpg" rel="shortcut icon" />
    
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>StudentInfo</title>

    <link href="../../Public/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../../Public/css/UserInfoCss.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<!-- ---------------------------------顶部图片和学生基本信息展览开始------------------------------------ -->
    <div class="headerLogo">
        <img class="Logo" src="../../Public/images/logo-title.png" />
    </div>
    <div class="headerLabel">
       <span><span class="glyphicon glyphicon-user " aria-hidden="true"></span></span> <span class="myHeaderSpanLabel">陈标飞</span> <span class="myHeaderSpanLabel">，您好！</span> <span ><span class="myHeaderSpanLabel">专业：</span><span class="myHeaderSpanLabel2">计算机科学与技术</span></span>&nbsp;&nbsp;<span ><span class="myHeaderSpanLabel">班级：</span><span class="myHeaderSpanLabel2">2013级计算机科学与技术2班</span></span>&nbsp;&nbsp;<span > <span class="myHeaderSpanLabel">学号：</span> <span class="myHeaderSpanLabel2">201324131246</span> </span>
    </div>
<!-- ------------------------------顶部图片和学生基本信息展览结束------------------------------- -->
    <!--------------------------------导航条开始----------------------------------------------------->

    <nav class="navbar navbar-default navbar-inverse mynav">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                

                <img class="navbar-brand" src="../../Public/images/LOGO2.png" />
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" id="mynavUl">
                    <li class="active" id="mynavL1"><a href="javascript:void(0);">个人信息 <span class="sr-only">(current)</span></a></li>
                    <li id="mynavL2"><a href="/UserInfo/ScoreInfo">成绩信息查询</a></li>
                    <li id="munavL3"><a href="/UserInfo/ShowSelectClassInfo">任意选修课网上选课</a> </li>
                </ul>
               
                <ul class="nav navbar-nav navbar-right">
                    <li ><a href="/Home/Exist" ><span class="glyphicon glyphicon-log-in mySuccess" aria-hidden="true"></span>&nbsp; 重新登录</a></li>
                    <li ><a href="/Home/Exist" ><span class="glyphicon glyphicon-log-out myError" aria-hidden="true"></span>&nbsp; 退出</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <!--------------------------------导航条结束----------------------------------------------------->
    <!--------------------------主内容开始-------------------------------------------------------->
    <div class="main_content">
        <div class="main_content_left">
            <div class="main_content_left_0"><span class="glyphicon glyphicon-wrench myNewSpanColor" aria-hidden="true"></span>&nbsp;  相关操作 </div>

            <div class="main_content_left_content">
                <div class="main_content_left_1" id="mynavLeft1"> &nbsp; <span class="glyphicon glyphicon-search myNewSpanColor" aria-hidden="true"></span>&nbsp; <a href="#">学生基本信息查询</a> </div>
                <div class="main_content_left_1" id="mynavLeft2"> &nbsp; <span class="glyphicon glyphicon-edit myNewSpanColor" aria-hidden="true"></span>&nbsp; <a href="javascript:void(0);" onclick="UpdatePwd()">修改密码</a> </div>
            </div>
        </div>
        <!-------------------------------左右两边分割线-------------------------------------------->
        <div class="main_content_right">
            <div>
                <div class="main_content_right_0">&nbsp;&nbsp;&nbsp;&nbsp;当前位置：学生 -----> 学生信息查询 </div>
            </div>

            <div class="main_content_right_content">
                <div class="main_content_right_content_title">学生基本信息查询</div>

                <div class="main_content_right_content_1">
                    <div class="mydiv1" id="mydiv1">
                       
                        <table id="StuInfoTable">
                            <tr class="mytr2 mytr2-1 "><th>学号：</th><td>&nbsp; 201324131246</td><th>姓名：</th><td>&nbsp; 陈标飞</td><th>出生年月：</th><td></td></tr>
                            <tr class="mytr2-1 ">
                                <th>性别：</th>
                                <td>&nbsp; 男</td>
                                <th>籍贯：</th>
                                <td>&nbsp; 广东肇庆</td>
                                <th>入学年月：</th>
                                <td>
                                    &nbsp; 2013/9/1                                </td>
                            </tr>
                            <tr class="mytr2 mytr2-1 "><th>民族：</th><td>&nbsp; 汉族</td><th>专业：</th><td>&nbsp; 计算机科学与技术</td><th>专业方向：</th><td></td></tr>
                            <tr class="mytr2-1 "><th>学院：</th><td>&nbsp; 计算机学院</td><th>班级：</th><td>&nbsp; 2013级计算机科学与技术2班</td><th>身份证号：</th><td>&nbsp; 52526987425652140</td></tr>
                            <tr class="mytr2 mytr2-1 "><th>年级：</th><td></td><th>邮箱：</th><td>&nbsp; 123456789@qq.com</td><th>联系电话：</th><td>&nbsp; 12345678910</td></tr>
                           <tr class="mytr3"><td colspan="6"><a href="javascript:void(0);" onclick="stuInfoEditClick()">【编辑】<a href="javascript:void(0);" id="btnDownLoadClick" data-toggle="tooltip" data-placement="right" title="<h5> <span class='myTipTitleColor'>下载个人信息生成 Excel 表格</span></h5>">【下载】</a></a> </td></tr>
                        </table>
                        <hr />
                        <table class="myHide" id="StuEditTable">
                            
                            <tr class="mytr3"><td colspan="2">【<text class="mythead"> 当前权限所具有的操作</text>】</td></tr>
                            <tr class="mytr2"><th>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;联系电话：</th><td><input type="text" value="12345678910" id="editPhone" data-toggle="tooltip" data-placement="right" title="<h5> <span class='myTipTitleColor'>请填入11位效的电话号码！</span></h5>" /></td></tr>
                            <tr class="mytr2"><th>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;邮&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;箱：</th><td><input type="text" value="123456789@qq.com" id="editEmail" data-toggle="tooltip" data-placement="right" title="<h5> <span class='myTipTitleColor'>例:someone@example.com</span></h5>"  /></tr>
                            <tr class="mytr3"><td colspan="2"><a href="javascript:void(0);" onclick="StuSaveClick()">【保存】</a> | <a href="javascript:void(0);" onclick="stuInfoEditClick() ">【取消】</a></td></tr>
                            <tr class="mytr3"><td colspan="2" id="stuSaveMsg"></td></tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--------------------------主内容结束-------------------------------------------------------->

    <hr />

    <!-----------------------系统帮助和说明模板框（开始）---------------------------------------->
    <div id="Timer">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary btn-lg myHide" data-toggle="modal" data-target="#myModal">
            Launch demo modal
        </button>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">系统帮助和说明</h4>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!-----------------------系统帮助和说明模板框（结束）---------------------------------------->

        <div class="footerLink"><p>友情链接：<a href="http://glyphicons.com/"> Glyphicons </a> | <a href="javascript:void(0);" onclick="myHelpLink()"> <span class="glyphicon glyphicon-question-sign " aria-hidden="true"></span> 系统帮助和说明</a> </p></div>
        <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
        <script src="../../Public/js/jquery-2.1.4.min.js"></script>
        <script src="../../Public/js/bootstrap.min.js"></script>
        <script src="../../Public/js/stuJS.js"></script>
</body>
</html>
