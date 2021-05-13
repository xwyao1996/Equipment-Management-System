package com.example.service;

import com.example.entity.Pcc;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.PccMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PccService extends ServiceImpl<PccMapper, Pcc> {

    @Resource
    private PccMapper pccMapper;

}