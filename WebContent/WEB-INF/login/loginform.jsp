<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	function send(f){
		<c:if test="${ requestScope.saveId ==null }">
			var saveId = confirm("is id save?");
			if(saveId){
				f.save.value='y';
			}
		</c:if>
		f.submit();
	}
</script>
</head>
<body>
	<h1>login page</h1>
	<form action="/login/login.do" method="post">
		<input type='hidden' name="save" value='n'/>
		<table border="1">
			<caption>::login::</caption>
			<tr>
				<th>id</th>
				<td>
					<c:if test="${ requestScope.saveId !=null }">
						<input name="id"  value="${ requestScope.saveId}"/>
					</c:if>
					<c:if test="${ requestScope.saveId ==null }">
						<input name="id" />
					</c:if>
				</td>
			</tr>
			<tr>
				<th>password</th>
				<td><input type="password" name="pwd">
			</tr>
			<tr>
				<td colspan="2">
				<input type='button' value="login" onclick='send(this.form)'/> 
				<input type="reset" value="cancel" /></td>
			</tr>
		</table>
	</form>
</body>
</html>