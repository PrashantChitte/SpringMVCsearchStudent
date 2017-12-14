package com.nareshit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nareshit.dao.StudentDAO;
import com.nareshit.dto.SearchParams;
import com.nareshit.dto.SearchResults;
@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
	private StudentDAO studentDao;
	
	public List<SearchResults> searchStudents(SearchParams searchParams) {
		  List<SearchResults> list= studentDao.searchStudents(searchParams);
		return list;
		
	}

}
