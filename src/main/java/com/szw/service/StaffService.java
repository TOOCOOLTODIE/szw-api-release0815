package com.szw.service;

import com.szw.entity.Staff;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional
public interface StaffService {
    /*查询人员*/
    Map<String, Object> listStaff(Integer start, Integer size, String keywords);
}
