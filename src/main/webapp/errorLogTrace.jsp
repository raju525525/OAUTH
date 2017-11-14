<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta names="apple-mobile-web-app-status-bar-style"
	content="black-translucent" />
<title>Tracing - Dashboard</title>
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
<script>
	/* function editMerchant(id, merchantCode, merchantName, logoUrl) {
		document.getElementById("id").value = id;
		document.getElementById("merchantCode").value = merchantCode;
		document.getElementById("merchantName").value = merchantName;
		document.getElementById("logoUrl").value = logoUrl;
	} */

	$(document).ready(function() {
		  var totalRows = $('#tblData').find('tbody tr:has(td)').length;
		  var recordPerPage = 10;
		  var totalPages = Math.ceil(totalRows / recordPerPage);
		  var $pages = $('<div id="pages"></div>');
		  for (i = 0; i < totalPages; i++) {
		    $('<span class="pageNumber">&nbsp;' + (i + 1) + '</span>').appendTo($pages);
		  }
		  $pages.appendTo('#tblData');

		  $('.pageNumber').hover(
		    function() {
		      $(this).addClass('focus');
		    },
		    function() {
		      $(this).removeClass('focus');
		    }
		  );

		  $('table').find('tbody tr:has(td)').hide();
		  var tr = $('table tbody tr:has(td)');
		  for (var i = 0; i <= recordPerPage - 1; i++) {
		    $(tr[i]).show();
		  }
		  $('span').click(function(event) {
		    $('#tblData').find('tbody tr:has(td)').hide();
		    var nBegin = ($(this).text() - 1) * recordPerPage;
		    var nEnd = $(this).text() * recordPerPage - 1;
		    for (var i = nBegin; i <= nEnd; i++) {
		      $(tr[i]).show();
		    }
		  });
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
</script><style type="text/css">
.focus {
	background-color: #ff00ff;
	color: #fff;
	cursor: pointer;
	font-weight: bold;
}

.pageNumber {
	padding: 2px;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%><c:if
		test="${pageContext.request.userPrincipal.name != null}">
		<%-- <h2>
				Tracing Tools<br /> UserName:
				${pageContext.request.userPrincipal.name} | <a
					onclick="document.forms['logoutForm'].submit()">Logout</a>
			</h2>
			<br />
			<br /> --%>
		<form:form name="errorLogTraceForm" commandName="errorLogTraceForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<div class="container-fluid" style="min-height: 592px">
				<div id="main">
					<div class="container-fluid">
						<div class="row" style="margin-top: 2%">
							<div class="col-md-2">
								<div class="list-group" style="margin-left: -30px">
									<a class="list-group-item" href="#"
										onclick="confgFunction()"><i class="fa fa-credit-card"></i>
										&nbsp; Configuration</a> <a class="list-group-item" href="#"
										onclick="PerformanceFunction()"><i class="fa fa-users"></i>
										&nbsp; PerformanceFunction </a> <a class="list-group-item"
										href="#" onclick="payLoadFunction()"> <i
										class="fa fa-wifi"></i> &nbsp; Payload Trace
									</a> <a class="list-group-item settingsActive" href="#" onclick="errorLogTrace()">
										<i class="fa fa-wifi"></i> &nbsp; ErrorLog Traces
									</a>
								</div>
							</div>

							<div class="col-md-10" style="display: block">
								<div class="panel panel-success"
									style="border: 1px solid #24BFBD;">
									<div class="panel-heading"
										style="font-size: 18px; background: #24BFBD; color: #fff">
										<span> <i class="fa fa-credit-card"></i> &nbsp;Error
											Log Trace
										</span>
									</div>
									<div class="panel-body"  id="tblData">
										<div class="table-responsive">
											<table class="table table-striped ">
												<tr>
													<th>SR_NO</th>
													<th>CLASS_NAME</th>
													<th>DATEAND_TIME</th>
													<th>ERROLINENUM</th>
													<th>ERRORINFO</th>
													<th>ERRORMETHODNAME</th>
													<th>ERRORTYPE</th>
													<th>HOSTNAME</th>
													<th>IP</th>
													<th>OPERATION_NAME</th>
													<th>REQUEST_URI</th>
													<th>RESPONSE_CODE</th>
												</tr>
												<c:forEach var="finadallErrorDetails"
													items="${finadallErrorDetails}">
													<tr>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.sr_no}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.class_name}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.dateand_time}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.errorlinenum}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.errorinfo}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.errormethodname}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.errortype}</td>

														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.hostname}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.ip}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.operation_name}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.request_uri}</td>
														<td class="dashtdValue" style="padding-top: 1%">${finadallErrorDetails.response_code}</td>


													</tr>
												</c:forEach>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="footer.jsp"%>
			<input type="hidden" name="hiddenURI">
			<script>
			$(document).ready(function() {
				active();
				function active() {
					var location = window.location.href;
					if (location == '${merchantContextPath}') {

						$("#Transactions").removeClass('active');
						$("#dashboard").removeClass('active');
						$("#Testing").removeClass('active');
						$("#Users").removeClass('active');
						$("#Settings").addClass('active');
					} else {
						$("#dashboard").addClass('active');
					}
				}
				$("#Settings").on('click', function() {
					active();
				});
				$(".levitate").ripple();
			});
		</script>
			<input type="hidden" name="hiddenMerchantID" id="hiddenMerchantID"
				value="" />
		</form:form>
	</c:if>
</body>

</html>
