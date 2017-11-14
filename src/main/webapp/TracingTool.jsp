<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta names="apple-mobile-web-app-status-bar-style"
	content="black-translucent" />
<title>Innovapptive Inc - Dashboard</title>
<title>Create an account</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/jquery-ui.min.css">
<link rel="stylesheet" href="css/ripple.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/ripple.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="apple-touch-icon-precomposed"
	href="img/apple-touch-icon-precomposed.png" />
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
</head>
<body>
	<%@ include file="header.jsp"%>

	<form:form name="loginform" commandName="loginform">
		<div class="container-fluid" style="min-height: 592px">
			<div id="main">
				<div class="container-fluid">
					<div class="row" style="margin-top: 2%">
						<div class="col-md-2">
							<div class="list-group" style="margin-left: -30px">
								<a class="list-group-item settingsActive" href="/"
									onclick="merchant()"><i class="fa fa-credit-card"></i>
									&nbsp; Configuration</a> <a class="list-group-item" href="#"
									onclick="PerformanceFunction()"><i class="fa fa-users"></i>
									&nbsp; Performance Trace </a> <a class="list-group-item"
									href="#" onclick="payLoadFunction()"> <i class="fa fa-wifi"></i>
									&nbsp; Payload Trace
								</a> <a class="list-group-item" href="#" onclick="errorLogTrace()">
									<i class="fa fa-wifi"></i> &nbsp; ErrorLog Traces
								</a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</form:form>
</body>

</html>
