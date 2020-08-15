package com.szw.controller;

import com.szw.entity.Staff;
import com.szw.mapper.StaffDao;
import com.szw.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @类名 StaffServiceImpl
 * @描述 员工业务类
 * @作者 szw
 * @日期 2020/7/4
 * @版本 1.0
 **/
@RestController
@RequestMapping("/staff")
public class StaffServiceImpl implements StaffService {

    @Autowired
    StaffDao staffDao;

    /**

     * @作者 szw

     * @描述 查询人员信息

     * @时间  2020/7/4 19:17

     * @参数 [page, size, keywords]

     * @返回值 java.util.List<com.szw.entity.Staff>

     **/
    @GetMapping("/list")
    public Map<String, Object> listStaff(@RequestParam(defaultValue = "1") Integer page,
                                         @RequestParam(defaultValue = "10") Integer size,
                                         @RequestParam(defaultValue = "") String keywords) {
        Integer start = (page - 1) * size;
        List<Staff> staffs = staffDao.listStaff(start,size,keywords);
        Long count = staffDao.countListStaff(keywords);
        Map<String, Object> map = new HashMap<>();
        map.put("users",staffs);
        map.put("count",count);
        return map;
    }
}
