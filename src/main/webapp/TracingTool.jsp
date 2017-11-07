<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Create an account</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<script type="text/javascript">
	function payLoadFunction() {
		document.loginform.action = "payloadTrace";
		document.loginform.method = "POST";
		document.loginform.submit();
	}
	function confgFunction() {
		//alert("hi")
		document.loginform.action = "welcome";
		document.loginform.method = "GET";
		document.loginform.submit();
	}
	function PerformanceFunction() {
		document.loginform.action = "performanceTrace";
		document.loginform.method = "POST";
		document.loginform.submit();
	}
	function errorLogTrace() {
		document.loginform.action = "errorLogTrace";
		document.loginform.method = "POST";
		document.loginform.submit();
	}
</script>
<body onload="demo()">
	<div class="container">

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				Tracing Tools<br /> UserName:
				${pageContext.request.userPrincipal.name} | <a
					onclick="document.forms['logoutForm'].submit()">Logout</a>
			</h2>

			<form name="loginform" id="logoutForm" method="POST"
				action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <br /> <br />

				<div class="table-responsive">
					<p>
						<h8> <label onclick="confgFunction()">Configuration
							||&nbsp;&nbsp;&nbsp;</label> <label onclick="PerformanceFunction()">Performance
							Trace ||&nbsp;&nbsp;&nbsp;</label> <label onclick="payLoadFunction()">Payload
							Trace</label> <label onclick="errorLogTrace()">ErrorLog Traces</label> </h8>
						<br /> <input type="checkbox" value="performanceTrace">
						Performance Trace<br> <input type="checkbox"
							name="payloadTrace" value="Car"> Payload Trace<br>
					<div id="txtAge" style="display: none">Age is something</div>

				</div>



			</form>


		</c:if>

	</div>
	<!-- /container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
