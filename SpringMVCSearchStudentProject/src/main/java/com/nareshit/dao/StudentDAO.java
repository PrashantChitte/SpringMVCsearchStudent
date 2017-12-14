package com.nareshit.dao;

import java.util.List;

import com.nareshit.dto.SearchParams;
import com.nareshit.dto.SearchResults;

public interface StudentDAO {

	List<SearchResults> searchStudents(SearchParams searchParams);

}
