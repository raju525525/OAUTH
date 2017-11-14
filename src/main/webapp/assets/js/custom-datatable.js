var table;
jQuery(document)
		.ready(
				function() {
					table = $('#person_Table')
							.DataTable(
									{
										"bPaginate" : true,
										"order" : [ 0, 'desc' ],
										"bInfo" : true,

										"iDisplayStart" : 0,
										"iDisplayLength": 20,
										"bProcessing" : true,
										"bServerSide" : true,
										"sAjaxSource" : path + "/TransactTable",
										"dom" : 'C<"clear">lfrtip',
										colVis : {
											"align" : "right",
											restore : "Restore",
											showAll : "Show All",
											showNone : "Show none",
											order : 'alpha',
											"buttonText" : " <i class='fa fa-filter'></i> columns  "
										},
										"language" : {
											"infoFiltered" : ""
										},
										"dom" : 'Cf<"toolbar"">rtip',

									});
					$('#person_Table').dataTable().columnFilter({
						aoColumns : [ {
							type : "number"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, {
							type : "text"
						}, ],
						bUseColVis : true
					}).fnSetFilteringDelay();
					$('#person_Table tbody')
							.on(
									'click',
									'tr',
									function() {
										$("#tBody").empty();
										var data = table.row(this).data();
										if (data.length) {
											$("#desableBtn").attr('disabled',
													false);
											// alert('You clicked on ' +
											// data[4]+ '\'s row');
											$(".successMsg").show();
											$("#suceeResMsg").text(data[3]);
											setTimeout(closeMsg, 3000);
											/*
											 * $.post("transactionReport.do",data[2],
											 * function(data, status){
											 * alert("Data: " + data +
											 * "\nStatus: " + status);
											 * console.log(data) });
											 */

											var trId = data[3];

											$
													.ajax({
														type : "POST",
														url : "transactionReport.do",
														data : "thiredPartyTransID="
																+ trId,
														success : function(
																data, status) {
															console.log(data);
															//alert(data)

															for (var i = 0; data.length > i; i++) {
																// alert(data[i].creationDate)

																// alert(new
																// Date(data[i].creationDate).toUTCString());
																date = new Date(
																		new Date(
																				data[i].creationDate)
																				.toUTCString());
																// alert(date.getFullYear()+'-'
																// +
																// (date.getMonth()+1)
																// +
																// '-'+date.getDate());
																data[i].creationDate = date
																		.getFullYear()
																		+ '-'
																		+ (date
																				.getMonth() + 1)
																		+ '-'
																		+ date
																				.getDate();
																data[i].creationDate = moment(
																		data[i].creationDate)
																		.format(
																				'YYYY-MM-DD');
																// alert(data[i].creationDate);
																$("#tBody")
																		.append(
																				"<tr><td style='padding-top:5%'>"
																						+ data[i].thiredPartyTransactionID
																						+ "</td> <td><textarea id='copyCode' style='overflow:hidden;min-width:600px;min-height:216px' disabled='disabled' class='form-control'> "
																						+ data[i].exceptionType
																						+ "</textarea> <button class='btn btn-info btn-sm levitate' style='margin-top:1%'><i class='fa fa-files-o' ></i> Copy</button>  </td> <td style='padding-top:5%'> "
																						+ data[i].fromSystem
																						+ "</td> <td style='padding-top:5%'> "
																						+ data[i].ipAndBrowserInfo
																						+ "</td> <td style='padding-top:5%'> "
																						+ data[i].creaionDate
																						+ "</td><td style='padding-top:5%'>"
																						+ data[i].messageType
																						+ "</td> </tr>");
																// alert(data[i].messageType);
															}
															/*
															 * alert("Data: " +
															 * data + "\nStatus: " +
															 * status);
															 */
															/*
															 * var loginUrl =
															 * 'venderConfiguration.do';
															 * document.location.href =
															 * loginUrl;
															 */

														},
														error : function(e) {
															var loginUrl = 'venderConfiguration.do';
															document.location.href = loginUrl;
														}
													});

											$("#transID").text(data[3]);
											$("#date").text(data[0]);
											$("#status").text(data[6]);
											$("#activationS").text(data[12]);
											$("#eMessage").text(data[11]);
											$("#aem").text(data[13]);
										} else {
											$("#desableBtn").attr('disabled',
													true);
										}
									});
					$("#personTable_length").hide();
					$("div.toolbar")
							.append(
									 '<div style="flaot:left;color:#000;" class="col-md-3" > <p style="font-size:20px">Transactions </p>  </div>  <div style="float:right">  <button class="btn btn-success levitate" style="margin-right:10px;background:none;color:#000"  type="button" id="desableBtn" disabled="disabled" > <i class="fa fa-list-alt"></i>&nbsp;ViewDetails</button> <button class="btn btn-info levitate" style="margin-right:10px;background:none;color:#000" type="button" id="exportTable"><i class="fa fa-angle-double-down"></i>&nbsp;Export</button> </div>  &nbsp;');
					$("div.toolbar").css({
						'padding':'1% 0%  2% 0%',
						'background':'#e8e8e8'
					})
					$("#desableBtn").on('click', function() {
						$("#myModal").modal('show');
					});
					$("#exportTable").on('click', function() {
						$("#search112").modal('show');
					});
					function closeMsg() {
						$(".successMsg,.errorMsg").hide();
					}
				});