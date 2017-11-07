package com.hellokoding.auth.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "errortracing")
public class ErrorBean {
	@Id
	@Column(name = "SR_NO")
	private int sr_no;
	@Column(name = "DATEAND_TIME")
	private String dateand_time;
	@Column(name = "CLASS_NAME")
	private String class_name;
	@Column(name = "OPERATION_NAME")
	private String operation_name;
	@Column(name = "IP")
	private String ip;
	@Column(name = "HOSTNAME")
	private String hostname;
	@Column(name = "ERROLINENUM")
	private String errorlinenum;
	@Column(name = "ERRORMETHODNAME")
	private String errormethodname;
	@Column(name = "ERRORTYPE")
	private String errortype;
	@Column(name = "ERRORINFO")
	private String errorinfo;
	@Column(name = "REQUEST_URI")
	private String request_uri;
	@Column(name = "RESPONSE_CODE")
	private String response_code;

	public int getSr_no() {
		return sr_no;
	}

	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}

	public String getDateand_time() {
		return dateand_time;
	}

	public void setDateand_time(String dateand_time) {
		this.dateand_time = dateand_time;
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

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getHostname() {
		return hostname;
	}

	public void setHostname(String hostname) {
		this.hostname = hostname;
	}

	public String getErrorlinenum() {
		return errorlinenum;
	}

	public void setErrorlinenum(String errorlinenum) {
		this.errorlinenum = errorlinenum;
	}

	public String getErrormethodname() {
		return errormethodname;
	}

	public void setErrormethodname(String errormethodname) {
		this.errormethodname = errormethodname;
	}

	public String getErrortype() {
		return errortype;
	}

	public void setErrortype(String errortype) {
		this.errortype = errortype;
	}

	public String getErrorinfo() {
		return errorinfo;
	}

	public void setErrorinfo(String errorinfo) {
		this.errorinfo = errorinfo;
	}

	public String getRequest_uri() {
		return request_uri;
	}

	public void setRequest_uri(String request_uri) {
		this.request_uri = request_uri;
	}

	public String getResponse_code() {
		return response_code;
	}

	public void setResponse_code(String response_code) {
		this.response_code = response_code;
	}

}
