package com.hellokoding.auth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.hellokoding.auth.model.TracingBean;
import com.hellokoding.auth.repository.TracingRepository;

@Service("tracingService")

public class TracingServiceImpl implements TracingService {
	@Autowired
	private TracingRepository tracingRepository;

	@Override
	public List<TracingBean> finadallUserDetails() {
		// TODO Auto-generated method stub
		//return tracingRepository.findallList();
		
		int limited = 100;
		Pageable pageable = new PageRequest(0,limited);
		Page<TracingBean> transactionsPage = tracingRepository.findAll(pageable);
		return transactionsPage.getContent();
	}
/*
	@Override
	public List<TracingBean> findrecentRecords(String uri) {
		// TODO Auto-generated method stub
		return tracingRepository.findrecentRecords(uri);
	}
*/

}
