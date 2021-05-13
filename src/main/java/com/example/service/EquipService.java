package com.example.service;

import com.example.entity.Equip;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.EquipMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class EquipService extends ServiceImpl<EquipMapper, Equip> {

    @Resource
    private EquipMapper equipMapper;

}