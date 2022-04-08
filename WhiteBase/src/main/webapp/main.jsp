<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>

<html>

<head>

<meta name="viewport" content="width= device-width" , initial-scale="1">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>WhiteBase</title>

</head>

<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>

	<nav class="navbar navbar-default">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">

				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="main.jsp">WhiteBase</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>

			<% //로그인 안되 있을때만 접속하기 출력
				if(userID == null){
			%>		
				
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> 접속하기 <span class="caret"></span>
				</a>

					<ul class="dropdown-menu">
						<li ><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<%
				} else{
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> 회원관리 <span class="caret"></span>
				</a>

					<ul class="dropdown-menu">
						<li ><a href="LogoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>

	<div class="container">
		<div class="humbotron">
			<div class="container">
				<h1>웹 사이트 소개</h1>
				<p>정통 우주세기 건담에 대해 이야기 하는 공간입니다</p>
				<p>회원간의 매너를 지켜주세요</p>
				<p><a class = "btn btn-primary btn-pull" href="https://namu.wiki/w/%EC%9A%B0%EC%A3%BC%EC%84%B8%EA%B8%B0">우주세기란?</a></p>
			
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
          	  <ol class="carousel-indicators">
             	   <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              	   <li data-target="#myCarousel" data-slide-to="1"></li>
              	   <li data-target="#myCarousel" data-slide-to="2"></li>
          	  </ol>
          	  <div class="carousel-inner">
              	  <div class="item active">
                    <img src="images/Whitebase-okawara.jpg">
                </div>
                <div class="item">
                    <img src="images/PS2_White_Base.jpg">
                </div>
                <div class="item">
                    <img src="images/3.jpg">
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
               		<span class="glyphicon glyphicon-chevron-left"></span>
            	</a>
           		<a class="right carousel-control" href="#myCarousel" data-slide="next">
               	 	<span class="glyphicon glyphicon-chevron-right"></span>
           		</a>
			</div>
		</div>
	</div>




	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<script src="js/bootstrap.js"></script>

</body>

</html>