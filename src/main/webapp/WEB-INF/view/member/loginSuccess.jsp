<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
window.alert('${sessionScope.login_ok}님 환영합니다.');
location.href='index.do';
</script>