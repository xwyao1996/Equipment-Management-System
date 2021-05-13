package com.example.service;

import com.example.entity.Server;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.ServerMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ServerService extends ServiceImpl<ServerMapper, Server> {

    @Resource
    private ServerMapper serverMapper;

}