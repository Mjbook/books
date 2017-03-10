<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="bbsWrite" action="bbsWrite.do">
<table>
	<tr>
		<th>제목</th>
		<td><input type="text" name="title"></td>
	</tr>
	<tr>
		<th>카테고리</th>
		<td>
			<select>
				<option value="1">하나</option>
				<option value="2">둘</option>
				<option value="3">셋</option>
					
			</select>
		</td>
	</tr>
	<tr>
		<th>공지글여부</th>
		<td><input type="checkbox" name="gong_ok">공지글<input type="checkbox" name="gong_no">공지글 아님</td>
	</tr>
	<tr>
		<th>등록자</th>
		<td><input type="text" name="writer" value=""></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea name="content"></textarea></td>		
	</tr>
	<tr>
		<td>첨부파일</td>
		<td>첨부파일모듈 삽입</td>
	</tr>
	<tr>
		<td colspan="2"><input type="button" value="목록"><input type="submit" value="저장">
	</tr>
</table>
</form>
</body>
</html>