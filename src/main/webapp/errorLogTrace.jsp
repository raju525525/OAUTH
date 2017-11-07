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
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<script type="text/javascript">
	/* 	function openPop(i) {
	 alert("hi"+i);
	 $.ajax({
	 type : "post",
	 url : "testme", //this is my servlet
	 data : "input=" + $('#ip').val() + "&output=" + $('#op').val(),
	 success : function(msg) {
	 $('#output').append(msg);
	 }
	 });

	 } */
	$(document).ready(function() {
		$(".responsediv").hide();
	});
	function payFuncation() {
		document.errorLogTraceForm.action = "PayLoadTracePage";
		document.errorLogTraceForm.method = "POST";
		document.errorLogTraceForm.submit();
	}
	function requestFunction() {
		document.errorLogTraceForm.action = "requestUri";
		document.errorLogTraceForm.method = "POST";
		document.errorLogTraceForm.submit();
	}

	function payLoadFunction() {
		document.errorLogTraceForm.action = "payloadTrace";
		document.errorLogTraceForm.method = "POST";
		document.errorLogTraceForm.submit();
	}
	function confgFunction() {
		//alert("hi")
		document.errorLogTraceForm.action = "welcome";
		document.errorLogTraceForm.method = "GET";
		document.errorLogTraceForm.submit();
	}
	function parent_disable() {
		if (popupWindow && !popupWindow.closed)
			popupWindow.focus();
	}

	/* 	var popupWindow = null;
	 var url = null;
	 function uriResponce(i) {
	 url = i;
	 popupWindow = window
	 .open(
	 url,
	 "_blank",
	 "directories=no, status=no, menubar=no, scrollbars=yes, resizable=no,width=800, height=320,top=300,left=300");

	 }
	 function parent_disable() {
	 if (popupWindow && !popupWindow.closed)
	 popupWindow.focus();
	 } */

	function PerformanceFunction() {
		document.errorLogTraceForm.action = "performanceTrace";
		document.errorLogTraceForm.method = "POST";
		document.errorLogTraceForm.submit();
	}
	function errorLogTrace() {
		document.errorLogTraceForm.action = "errorLogTrace";
		document.errorLogTraceForm.method = "POST";
		document.errorLogTraceForm.submit();
	}
</script>
<body>
	<div class="container">


		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				Tracing Tools<br /> UserName:
				${pageContext.request.userPrincipal.name} | <a
					onclick="document.forms['logoutForm'].submit()">Logout</a>
			</h2>
			<br />
			<br />

			<form name="errorLogTraceForm" id="logoutForm" method="POST"
				action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />


				<!-- <input type="button" id="hide">Hide
				</button>
				<input type="button" id="show">Show
				</button>
				<br /> <br /> -->



				<div class="table-responsive">
					<p>
						<h8> <label onclick="confgFunction()">Configuration
							||&nbsp;&nbsp;&nbsp;</label> <label onclick="PerformanceFunction()">Performance
							Trace ||&nbsp;&nbsp;&nbsp;</label> <label onclick="payLoadFunction()">Payload
							Trace</label> <label onclick="errorLogTrace()">ErrorLog Traces</label> </h8>
					<div class="table-responsive">
						<b><p>ErrorLog Trace :</p></b>
						<table class="table-responsive">
							<thead>
								<tr>
									<th nowrap="nowrap">SR_NO</th>
									<th nowrap="nowrap">CLASS_NAME</th>
									<th nowrap="nowrap">DATEAND_TIME</th>
									<th nowrap="nowrap">ERROLINENUM</th>
									<th nowrap="nowrap">ERRORINFO</th>
									<th nowrap="nowrap">ERRORMETHODNAME</th>
									<th nowrap="nowrap">ERRORTYPE</th>
									<th nowrap="nowrap">HOSTNAME</th>
									<th nowrap="nowrap">IP</th>
									<th nowrap="nowrap">OPERATION_NAME</th>
									<th nowrap="nowrap">REQUEST_URI</th>
									<th nowrap="nowrap">RESPONSE_CODE</th>
								</tr>
							</thead>
							<tbody id="mainBody">
								<c:forEach items="${finadallErrorDetails}" var="finadallErrorDetails">
									<tr>
										<td>${finadallErrorDetails.sr_no}</td>
										<td>${finadallErrorDetails.class_name}</td>
										<td>${finadallErrorDetails.dateand_time}</td>
										<td>${finadallErrorDetails.errorlinenum}</td>
										<td>${finadallErrorDetails.errorinfo}</td>
										<td>${finadallErrorDetails.errormethodname}</td>
										<td>${finadallErrorDetails.errortype}</td>
										<td>${finadallErrorDetails.hostname}</td>
										<td>${finadallErrorDetails.ip}</td>
										<td>${finadallErrorDetails.operation_name}</td>
										<td>${finadallErrorDetails.request_uri}</td>
										<td>${finadallErrorDetails.response_code}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

				</div>

				<div class="responsediv">
					<p>If you click on the "Hide" button, I will disappear.</p>
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
