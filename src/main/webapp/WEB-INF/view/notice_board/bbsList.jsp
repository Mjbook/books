<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>공지사항</h3>
<hr>
<form name="bbsList" action="bbsList.do">
<fieldset>
전체: 미구현 <select name= "condition1"> 
<option>one</option>
<option>two</option>
<option>three</option>
</select>

<select name= "condition2"> 
<option>일</option>
<option>둘</option>
<option>셋</option>
</select>
<input type="text" name="serch">
<input type="submit" value="검색">
<hr>
<table>
	<thead>
		<th>번호</th>
		<th>제목</th>
		<th>등록자</th>
		<th>등록일</th>
		<th>조회</th>
	</thead>
	<tbody>
		<c:set var="list" value="${list }" />
		<c:if test="${!empty list }">
			<c:forEach var="list" items="${list }">
				<tr>
					<td>${list.idx }</td>
					<td>${list.title }</td>
					<td>${list.writer }</td>
					<td>${list.write_day }</td>
					<td>${list.readnum }</td>
				</tr>
			</c:forEach>
		</c:if> 
	</tbody>
	
	<tfoot>
		<a href="noticeboard.do"><input type="button" value="글쓰기"></a>
	</tfoot>
</table>

</fieldset>

</form>
</body>
</html>