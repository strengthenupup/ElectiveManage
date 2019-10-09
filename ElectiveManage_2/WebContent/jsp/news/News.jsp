<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/* 图片每3秒循环换 */
	var curIndex = 0;
	var timeInterval = 3000;
	var arr = new Array();
	arr[0] = "${pageContext.request.contextPath}/images/1.jpg";
	arr[1] = "${pageContext.request.contextPath}/images/2.jpg";
	arr[2] = "${pageContext.request.contextPath}/images/3.jpg";
	setInterval(changeImg, timeInterval);
	function changeImg() {
		var obj = document.getElementById("obj");
		if (curIndex == arr.length - 1) {
			curIndex = 0;
		} else {
			curIndex += 1;
		}
		obj.src = arr[curIndex];
	};
	window.onload = function() {
		document.getElementById("obj").onclick = function() {
			var obj = document.getElementById("obj");
			if (curIndex == arr.length - 1) {
				curIndex = 0;
			} else {
				curIndex += 1;
			}
			obj.src = arr[curIndex];
		}
	}
</script>
</head>
<body bgcolor="#e5eecc">

	<h3>新闻浏览</h3>

	<div align="center">
		<h4>我院教师参加第五届全国民办高校辅导员工作高峰论坛</h4>
	</div>
	<div align="center">	    	   
		<img id="obj" src="${pageContext.request.contextPath}/images/1.jpg"
			width="700">
		
	</div>
	
	<p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019年5月9-12日，第五届全国民办高校辅导员工作高峰论坛在重庆隆重召开，论坛由全国民办高校学生工作者联席会主办、重庆交通职业学院承办，来自全国近200所民办高校420名民办高校学生工作主管领导、学生处长及骨干辅导员参与交流。我院学工部副部长金锡标、建工学院党总支副书记杨象国、经管学院辅导员王剑辉、文法学院辅导员商飞燕四人出席本次会议。

论坛通过专家报告、红色教育、闪电演讲、专题研讨、典型案例分享、导员叙事等多种形式，分享了如何做好大学生成长的指导者和引路人、学生工作沟通艺术、辅导员职业能力与专业发展、民办高校辅导员职业化现状研究以及班级管理、学生工作创新理念、学生心理危机干预等方面内容。

论坛上，联席会副秘书长崔佳博士宣读了2019全国民办高校班级管理创新者名单，我院提交的《“专业+超市”班级管理创新》案例荣获2019年全国民办高校班级管理创新案例一等奖（申报高校100多项，联席会最终评选出一等奖15项，二等奖27人，三等奖28人，优秀奖14项）。同时，我院商飞燕老师应邀在本次大会上分享我院提交的创新案例，掌声不断。

论坛最后一项议程，第四届全国民办高校优秀辅导员颁奖典礼在此隆重举行，我院辅导员杨象国老师心系学生十三载，培育桃李在四方，荣获“2019全国民办高校优秀辅导员”荣誉称号。</p>
</body>
</html>