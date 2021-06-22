package com.example.controller;

import com.example.common.Result;
import com.example.entity.Vm;
import com.example.service.VmService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/vm")
public class VmController {
    @Resource
     private VmService vmService;

    @PostMapping
    public Result<?> save(@RequestBody Vm vm) {
        return Result.success(vmService.save(vm));
    }

    @PutMapping
    public Result<?> update(@RequestBody Vm vm) {
        return Result.success(vmService.updateById(vm));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        vmService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<Vm> findById(@PathVariable Long id) {
        return Result.success(vmService.getById(id));
    }

    @GetMapping
    public Result<List<Vm>> findAll() {
        return Result.success(vmService.list());
    }

    @GetMapping("/page")
    public Result<IPage<Vm>> findPage(@RequestParam(required = false, defaultValue = "") String name,
                                           @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                           @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        return Result.success(vmService.page(new Page<>(pageNum, pageSize), Wrappers.<Vm>lambdaQuery().like(Vm::getName, name)));
    }

}