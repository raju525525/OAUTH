package com.hellokoding.auth.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hellokoding.auth.model.ErrorBean;

@Repository("ErrorRepository")
public interface ErrorRepository extends JpaRepository<ErrorBean, Integer> {
	/*
	 * @Query("Select a from requesttracing a") List<TracingBean> fin();
	 */
	@Query("Select a from ErrorBean a")
	List<ErrorBean> findallList();

	/*
	 * @Query("SELECT * FROM requesttracing   where a.request_uri LIKE ':%parent'"
	 * ) List<TracingBean> findrecentRecords(@Param("parent") String parent);
	 */

	/*
	 * @Modifying
	 * 
	 * @Query("Select a from TracingBean a WHERE a.request_uri LIKE %:parent%")
	 * List<TracingBean> findrecentRecords(@Param("parent") String parent);
	 */
}

// select * from odata.requesttracing order by sr_no desc limit 5
// findLimited
// @Query("Select a from TracingBean a ORDER BY a.srNo")
// List<TracingBean> findrecentRecords();
/*
 * List<TracingBean> findMatchingComplicatedCriteria(@Param("value") String
 * value, Pageable pageable);
 * 
 * Pageable pageable = new PageRequest(0, 10);
 */
