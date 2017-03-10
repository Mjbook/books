<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
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
			<form name="bbsSearch" action="bbsSearch.do">
				 <div class="wakusearcha mt10">
					<p class="tot">전체 : <span>228</span> (1/12 페이지)</p>
					<ul class="searcha">
						<li><select class="sw150">
								<option>위원회선택</option>
							</select></li>
						<li><select name="jogun"class="sw150">
								<option value="title">제목</option>
								<option value="writer">이름</option>
							</select></li>
						<li><input type="text" name="search" class="search_blur" onFocus="this.className='search_focus'" onBlur="if ( this.value == '' )"></li>
						<li><button type="submit" class="searchbtn">검색</button></li>
					</ul>
				</div>
			</form>
		<table class="tablelist mt10" summary="공지사항입니다">
			<caption>공지사항</caption>
			<colgroup>
					<col width="8%" />
			    	<col width="*" />
					<col width="12%" />
					<col width="12%" />
					<col width="10%" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">등록자</th>
					<th scope="col">등록일</th>
					<th scope="col">조회</th>
				</tr>	
			</thead>
			<tbody>
				<tr>
					<td scope="row"><span class="notice">공지</span></td>
					<td class="tal">제목이 들어갑니다</td>
					<td>관리자</td>
					<td>2015.10.22</td>
					<td>1245</td>
				</tr>
				<c:set var="list" value="${list}" />
				<c:forEach var="list" items="${list }">
				<tr>
					<td scope="row"><span class="notice">${list.idx }</span></td>
					<td class="tal"><a href="bbsContent.do?idx=${list.idx}">${list.title }</a></td>
					<td>${list.writer }</td>
					<td>${list.write_day }</td>
					<td>${list.readnum }</td>
				</tr>	
				</c:forEach>
				
				<c:if test="${!empty search }">
					<c:forEach var="list" items="${search }">
					<tr>
						<td scope="row"><span class="notice">${search.idx }</span></td>
						<td class="tal"><a href="bbsContent.do?idx=${search.idx}">${search.title }</a></td>
						<td>${search.writer }</td>
						<td>${search.write_day }</td>
						<td>${search.readnum }</td>
					</tr>	
				</c:forEach>
				</c:if>
				</tbody>		
			</table>
			<div class="paging mt50">
				<span style="width:90px;display:inline-block"><a  href="#" class="prevEnd"><img src="../images/common/btn_prevEnd.png" alt="" /></a>
				<a  href="#" class="prev"><img src="../images/common/btn_prev.png" alt="" /></a></span>
				<a href="#" class="on">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<a href="#">6</a>
				<a href="#">7</a>
				<a href="#">8</a>
				<a href="#">9</a>
				<a href="#">10</a>
				<span style="width:90px;display:inline-block;test-align:right"><a href="#" class="next"><img src="../images/common/btn_next.png" alt="" /></a>
				<a href="#" class="nextEnd"><img src="../images/common/btn_nextEnd.png" alt="" /></a>	</span>
			</div>
			<form name="bbsWrite" action="noticeboard.do">
			<p class="upbtnarea"><button type="submit" class="upbtn">등록</button></p>
			</form>
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