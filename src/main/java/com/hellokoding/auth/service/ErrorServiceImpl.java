package com.hellokoding.auth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hellokoding.auth.model.ErrorBean;
import com.hellokoding.auth.repository.ErrorRepository;

@Service("errorService")

public class ErrorServiceImpl implements ErrorService {
	@Autowired
	private ErrorRepository errorRepository;

	@Override
	public List<ErrorBean> finadallErrorDetails() {
		// TODO Auto-generated method stub
		return errorRepository.findallList();
	}
	/*
	 * @Override public List<TracingBean> findrecentRecords(String uri) { //
	 * TODO Auto-generated method stub return
	 * tracingRepository.findrecentRecords(uri); }
	 */

}
