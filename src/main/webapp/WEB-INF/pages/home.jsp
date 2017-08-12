<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	welcome to my page.
	<br/>
	<form action="onduty/saveRecords.do" method="post">
		<fieldset>
			<legend>备注</legend>
			<textarea rows="10" cols="" name="remarks"></textarea>
		</fieldset>
		<input type="submit" value="提交"/>
	</form>
</body>
</html>