package com.wsh.pro.controller;

import com.wsh.pro.entity.Role;
import com.wsh.pro.aspect.DataSource;
import com.wsh.pro.dao.RoleDao;
import com.wsh.pro.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author: wsh
 */
@RequestMapping("/master")
@RestController
public class TestController {

    @Autowired
    RoleDao roleDao;

    @DataSource(value="master")
    @GetMapping("master")
    public Result master( ) {
        List<Role> roles = roleDao.queryAll(null);
        return Result.success(roles);
    }

    @DataSource(value="slave")
    @GetMapping("slave")
    public Result slave( ) {
        List<Role> roles = roleDao.queryAll(null);
        return Result.error("不想说话");
    }



}
