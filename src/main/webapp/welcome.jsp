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
	function parent_disable() {
		if (popupWindow && !popupWindow.closed)
			popupWindow.focus();
	}

	var popupWindow = null;
	var url = null;
	function child_open(i) {
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
	}
</script>
<body onFocus="parent_disable();" onclick="parent_disable();">
	<div class="container">

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				Welcome ${pageContext.request.userPrincipal.name} | <a
					onclick="document.forms['logoutForm'].submit()">Logout</a>
			</h2>

			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <br />

				<div class="table-responsive">
					<table class="table table-bordered table-striped ">
						<thead>
							<tr>
								<th nowrap="nowrap">SrNo</th>
								<th nowrap="nowrap">DateandTime</th>
								<!-- <th nowrap="nowrap">RelativeTime</th> -->
								<th nowrap="nowrap">Address</th>
								<th nowrap="nowrap">http.status_code</th>
								<th nowrap="nowrap">Method</th>
								<th nowrap="nowrap">Server Address</th>
								<th nowrap="nowrap">http.url</th>
								<th nowrap="nowrap">PayLoad</th>
							</tr>
						</thead>
						<tbody id="mainBody">
							<c:forEach items="${allUserDetails}" var="allUserDetails">
								<tr>
									<td>${allUserDetails.srNo}</td>
									<td>${allUserDetails.dateandTime}</td>
									<%-- <td>${allUserDetails.timeDiffirence}</td> --%>
									<td>${allUserDetails.hostname}</td>
									<td>${allUserDetails.responseCode}</td>
									<td>${allUserDetails.request_Method}</td>
									<td>${allUserDetails.ip}</td>
									<td onclick="child_open('${allUserDetails.requestUri}')">${allUserDetails.requestUri}</td>
									<td>${allUserDetails.contentType_Body}</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
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
