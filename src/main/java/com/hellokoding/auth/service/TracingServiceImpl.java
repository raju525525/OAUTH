package com.hellokoding.auth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
		return tracingRepository.findallList();
	}

}