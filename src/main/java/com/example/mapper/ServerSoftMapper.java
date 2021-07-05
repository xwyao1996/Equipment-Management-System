package com.example.mapper;

import com.example.entity.ServerSoft;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

public interface ServerSoftMapper extends BaseMapper<ServerSoft> {
    List<ServerSoft> findByRemarks(String remarks);
}