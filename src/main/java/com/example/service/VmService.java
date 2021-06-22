package com.example.service;

import com.example.entity.Vm;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.VmMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class VmService extends ServiceImpl<VmMapper, Vm> {

    @Resource
    private VmMapper vmMapper;

}