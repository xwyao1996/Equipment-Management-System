package com.example.controller;

import com.example.common.Result;
import com.example.entity.Gpu;
import com.example.service.GpuService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/gpu")
public class GpuController {
    @Resource
     private GpuService gpuService;

    @PostMapping
    public Result<?> save(@RequestBody Gpu gpu) {
        return Result.success(gpuService.save(gpu));
    }

    @PutMapping
    public Result<?> update(@RequestBody Gpu gpu) {
        return Result.success(gpuService.updateById(gpu));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        gpuService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<Gpu> findById(@PathVariable Long id) {
        return Result.success(gpuService.getById(id));
    }

    @GetMapping
    public Result<List<Gpu>> findAll() {
        return Result.success(gpuService.list());
    }

    @GetMapping("/page")
    public Result<IPage<Gpu>> findPage(@RequestParam(required = false, defaultValue = "") String name,
                                           @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                           @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        return Result.success(gpuService.page(new Page<>(pageNum, pageSize), Wrappers.<Gpu>lambdaQuery().like(Gpu::getName, name)));
    }

}