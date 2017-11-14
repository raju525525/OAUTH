<%-- <%@ taglib uri="/WEB-INF/customTag.tld" prefix="MyTag"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
a.disabled {
	pointer-events: none;
	cursor: default;
}
</style>
<script>
	function actions(url) {
		var act = "./" + url;
		document.formHeader.action = "./" + url;
		document.formHeader.method = "POST";
		document.formHeader.submit();
	}
	function fnSubmit1() {
		document.formHeader.action = "adminLogin.do";
		document.formHeader.method = "GET";
		document.formHeader.submit();
		return false;

	}
	$( document ).ready(function() {
		var merID = '<%=session.getAttribute("merchantID")%>
	';
		//alert("hi"+merID)
		if (merID != 'null') {
			// alert("hi");
			$("a").removeClass('disabled');
		}
	});

</script>
<div id="navigation">
	<div class="container-fluid">
		<form name="formHeader">
			<a href="#" onclick="actions('index.do')" class="disabled" id="brand"
				style="letter-spacing: 2px"><b>SAP Gateway Tracing & Error
					Log Trace</b></a>

			<div class="user">
				<div class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">${pageContext.request.userPrincipal.name}
						<img src="images/default_avatar.jpg" alt="" class="img-circle">
					</a>
					<ul class="dropdown-menu pull-right">

						<li><a href="login"> Sign out</a></li>

					</ul>
				</div>
			</div>
			<ul class='main-nav pull-right'>

				<li><a href="#"><strong> &nbsp;<b>${merchantName}</b></strong>
				</a></li>

			</ul>
			<input type="hidden" name="hiddenmerID" value="" id="hiddenmerID" />
		</form>
	</div>
</div>