<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/adminstyle.css" />
</head>
<body>
<div id="contWrap"><!-- contWrap -->
<section>
	<article id="suvcon">
		<div class="rightcon">
			<h3>공지사항</h3>
				 <div class="wakusearcha mt10">
					<p class="tot">전체 : <span>228</span> (1/12 페이지)</p>
					<ul class="searcha">
						<li><select class="sw150">
								<option>전체</option>
							</select></li>
						<li><input type="text" class="search_blur" onFocus="this.className='search_focus'" onBlur="if ( this.value == '' )"></li>
						<li><button type="submit" class="searchbtn">검색</button></li>
					</ul>
				</div>

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
				<c:if test="${empty bbsList}">
				<tr>
					<td scope="row" colspan="5">등록된 게시물이 없습니다.</td>
				</tr>
				</c:if>
				<c:if test="${!empty bbsList}">
					<c:forEach var="list" items="${bbsList}">
					<tr>
						<c:if test="">
							<!-- <td scope="row"><span class="notice">공지</span></td> -->
						</c:if>
						<td scope="row">${list.idx}</td>
						<td class="tal"><a href="bbsContent.do?idx=${list.idx}" style="display: block;">${list.subject}</a></td>
						<td>${list.writer}</td>
						<td>${list.writedate}</td>
						<td>${list.readnum}</td>
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
			<p class="upbtnarea"><button type="submit" class="upbtn" onclick="javascript:location.href='bbsAddForm.do';">등록</button></p>
		</div><!-- rightcon -->
	</article>
</section>
</div><!-- //contWrap -->
</body>
</html>