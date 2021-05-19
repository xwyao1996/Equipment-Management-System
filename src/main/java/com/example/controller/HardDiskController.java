package com.example.controller;

import com.example.common.Result;
import com.example.entity.HardDisk;
import com.example.service.HardDiskService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/hardDisk")
public class HardDiskController {
    @Resource
     private HardDiskService hardDiskService;

    @PostMapping
    public Result<?> save(@RequestBody HardDisk hardDisk) {
        return Result.success(hardDiskService.save(hardDisk));
    }

    @PutMapping
    public Result<?> update(@RequestBody HardDisk hardDisk) {
        return Result.success(hardDiskService.updateById(hardDisk));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        hardDiskService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<HardDisk> findById(@PathVariable Long id) {
        return Result.success(hardDiskService.getById(id));
    }

    @GetMapping
    public Result<List<HardDisk>> findAll() {
        return Result.success(hardDiskService.list());
    }

    @GetMapping("/page")
    public Result<IPage<HardDisk>> findPage(@RequestParam(required = false, defaultValue = "") String name,
                                           @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                           @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        return Result.success(hardDiskService.page(new Page<>(pageNum, pageSize), Wrappers.<HardDisk>lambdaQuery().like(HardDisk::getName, name)));
    }

}