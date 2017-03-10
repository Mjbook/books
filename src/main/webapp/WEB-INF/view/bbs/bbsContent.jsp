<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>온라인 행정심판 관리자페이지</title>
<link rel="stylesheet" type="text/css" href="css/adminstyle.css" />
</head>
<body>
<div id="contWrap"><!-- contWrap -->
	<div class="toputil">
		<div class="uwaku">
			<ul class="utill">
			<li><a href="/main/main.do">사이트로 이동</a></li>
			<li><a href="#" class="fin">로그아웃</a></li>
			</ul>
		</div>
	</div><!-- toputil -->
<header id="header"><!-- header -->
		<div class="inner">
		    <h1><a href="#"><img src="../images/common/bi.png" alt="온라인행정심판" /></a></h1>
			<nav id="gnb">
				<ul class="gnb">
					<li><a href="#">사용자관리</a></li>
					<li><a href="#">게시판관리</a></li>
					<li><a href="#">컨텐츠관리</a></li>
					<li><a href="#">설문조사관리</a></li>
					<li><a href="#">프로그램관리</a></li>
				</ul>
			  </nav><!-- gnb -->
		</div><!-- inner -->
	<div class="submenu"></div>
</header><!-- //header -->

<section>
<article id="suvcon">
		<div class="leftcon">
			<h2><span>게시판관리</span></h2>
				<ul class="sublist">
					<li class="on"><a href="">공지사항</a></li>
					<li class=""><a href="">서식모음</a></li>
					<li class=""><a href="">자주묻는질문</a></li>
				</ul>
		</div>
		<div class="rightcon">
			<h3>공지사항</h3>
			<table class="tableRegister mt10">
					<tr>	
						<th scope="row" style="15%">제목</th>
						<td style="width:85%"><input type="text" class="sw300"></td>
				   </tr>
				   <tr>
						<th scope="row">카테고리</th>
						<td><select class="sw200">
								<option>온라인행정심판</option>
							</select></td>
				   </tr>
					<tr>
						<th scope="row">공지글여부</th>
						<td><span style="width:130px;display:inline-block"><input type="checkbox"> 공지글 </span> <span style="width:130px;display:inline-block"><input type="checkbox" checked="checked"> 공지글 아님</span></td>
					</tr>
						<tr>
						<th scope="row">등록자 </th>
						<td><input type="text" class="sw100" value="통합관리자"></td>
					</tr>
					<tr>
						<th scope="row">내용</th>
						<td><textarea style="height:100px;width:96%">에디터 삽입</textarea></td>
					</tr>
					<tr>
						<th scope="row">첨부파일</th>
						<td>첨부파일 모듈삽입</td>
					</tr>
			</table>
			<div class="paging mt50"><button type="submit" class="upbtn">목록</button> <button type="submit" class="upbtn">저장</button></div>
		</div><!-- rightcon -->
</article>
</section>
<footer id="footer"><!-- footert -->
		<div class="tarea">
	    	<div class="bottomci"><img src="/images/common/ci_footer.png" alt="온라인행정심판" /></div>
			<address class="copy">
				우)30102 세종특별자치시 도움5로(어진동 307-12) 정부세종청제 7-2동 중앙행정심판위원회 / TEL 110   </br>
				본 홈페이지에 게시된 이메일 주소가 자동수집되는 것을 거부하며 이를 위반시 정보통신망에 의해 처벌됨을 유념하시기 바랍니다.
			</address>
		</div>
	</footer><!-- //footert -->
</div><!-- //contWrap -->
</body>
</html>
