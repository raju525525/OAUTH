package com.hellokoding.auth.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "requesttracing")
public class TracingBean {
	@Id
	@Column(name = "srNo")
	private int srNo;
	@Column(name = "ip")
	private String ip;
	@Column(name = "hostname")
	private String hostname;
	@Column(name = "dateandTime")
	private String dateandTime;
	@Column(name = "timeDiffirence")
	private Integer timeDiffirence;
	@Column(name = "requestUri")
	private String requestUri;
	@Column(name = "responseCode")
	private Integer responseCode;
	private String request_Method;
	private String contentType_Body;
	private String class_name;
	private String operation_name;

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getRequestUri() {
		return requestUri;
	}

	public void setRequestUri(String requestUri) {
		this.requestUri = requestUri;
	}

	public String getHostname() {
		return hostname;
	}

	public void setHostname(String hostname) {
		this.hostname = hostname;
	}

	public String getDateandTime() {
		return dateandTime;
	}

	public void setDateandTime(String dateandTime) {
		this.dateandTime = dateandTime;
	}

	public int getSrNo() {
		return srNo;
	}

	public void setSrNo(int srNo) {
		this.srNo = srNo;
	}

	public Integer getTimeDiffirence() {
		return timeDiffirence;
	}

	public void setTimeDiffirence(Integer timeDiffirence) {
		this.timeDiffirence = timeDiffirence;
	}

	public Integer getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(Integer responseCode) {
		this.responseCode = responseCode;
	}

	public String getRequest_Method() {
		return request_Method;
	}

	public void setRequest_Method(String request_Method) {
		this.request_Method = request_Method;
	}

	public String getContentType_Body() {
		return contentType_Body;
	}

	public void setContentType_Body(String contentType_Body) {
		this.contentType_Body = contentType_Body;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public String getOperation_name() {
		return operation_name;
	}

	public void setOperation_name(String operation_name) {
		this.operation_name = operation_name;
	}

}
