package com.example.service;

import com.example.entity.ServerSoft;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.ServerSoftMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ServerSoftService extends ServiceImpl<ServerSoftMapper, ServerSoft> {

    @Resource
    private ServerSoftMapper serverSoftMapper;

}