<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/css/adminstyle.css" />
</head>
<body>
	<div id="contWrap"><!-- contWrap -->
		<section>
			<article id="suvcon">
				<div class="rightcon">
					<h3>게시글 등록</h3>
					<form name="bbsAddForm" action="bbsAdd.do" method="post">
					<table class="tableRegister mt10">
						<tr>
							<th scope="row" style="">제목</th>
							<td style="width: 85%" colspan="3"><input type="text" class="sw300" name="subject" required="required"></td>
						</tr>
						<tr>
							<th scope="row" style="">등록자</th>
							<td colspan="3" style=""><input type="text" class="sw300" name="writer" required="required"></td>
						</tr>
						<tr>
							<th scope="row" style="">비밀번호</th>
							<td colspan="3" style=""><input type="password" class="sw100" name="pwd" required="required"></td>
						</tr>
						<tr>
							<th scope="row">내용</th>
							<td colspan="3"><textarea rows="20" cols="100" name="content" required="required"></textarea></td>
						</tr>
						<!-- <tr>
							<th scope="row">첨부파일</th>
							<td colspan="3"><a href="3">첨부파일01.jpg</a></td>
						</tr> -->
					</table>
					<div class="paging mt50">
						<input type="submit" class="upbtn" value="등록">
						<input type="reset" class="upbtn" value="취소">
					</div>
					
					</form>
				</div><!-- rightcon -->
			</article>
		</section>
	</div><!-- //contWrap -->
</body>
</html>