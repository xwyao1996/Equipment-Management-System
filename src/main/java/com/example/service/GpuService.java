package com.example.service;

import com.example.entity.Gpu;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.GpuMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class GpuService extends ServiceImpl<GpuMapper, Gpu> {

    @Resource
    private GpuMapper gpuMapper;

}