package com.example.controller;

import com.example.common.Result;
import com.example.entity.Equip;
import com.example.service.EquipService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/equip")
public class EquipController {
    @Resource
     private EquipService equipService;

    @PostMapping
    public Result<?> save(@RequestBody Equip equip) {
        return Result.success(equipService.save(equip));
    }

    @PutMapping
    public Result<?> update(@RequestBody Equip equip) {
        return Result.success(equipService.updateById(equip));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        equipService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<Equip> findById(@PathVariable Long id) {
        return Result.success(equipService.getById(id));
    }

    @GetMapping
    public Result<List<Equip>> findAll() {
        return Result.success(equipService.list());
    }

    @GetMapping("/page")
    public Result<IPage<Equip>> findPage(@RequestParam(required = false, defaultValue = "") String name,
                                           @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                           @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        return Result.success(equipService.page(new Page<>(pageNum, pageSize), Wrappers.<Equip>lambdaQuery().like(Equip::getName, name)
                .or().like(Equip::getAssetid, name).or().like(Equip::getBuyer, name).or().like(Equip::getCheckid, name)
                .or().like(Equip::getLocation, name).or().like(Equip::getNms, name).or().like(Equip::getUser, name)
                .or().like(Equip::getStatus, name).or().like(Equip::getPrice, name)));
    }

}