package com.hellokoding.auth.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hellokoding.auth.model.TracingBean;

@Repository("tracingRepository")
public interface TracingRepository extends JpaRepository<TracingBean, Integer> {
	/*@Query("Select a from requesttracing a")	
	List<TracingBean> fin();*/
	@Query("Select a from TracingBean a")	
    List<TracingBean> findallList();

}	
