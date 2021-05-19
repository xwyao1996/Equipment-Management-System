package com.example.service;

import com.example.entity.HardDisk;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.HardDiskMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class HardDiskService extends ServiceImpl<HardDiskMapper, HardDisk> {

    @Resource
    private HardDiskMapper hardDiskMapper;

}