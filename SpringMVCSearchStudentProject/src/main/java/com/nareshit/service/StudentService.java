package com.nareshit.service;

import java.util.List;

import com.nareshit.dto.SearchParams;
import com.nareshit.dto.SearchResults;


public interface StudentService {
public List<SearchResults> searchStudents(SearchParams searchParams);
}
