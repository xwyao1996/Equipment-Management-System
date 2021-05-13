package com.example.controller;

import com.example.common.Result;
import com.example.entity.Pcc;
import com.example.service.PccService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/pcc")
public class PccController {
    @Resource
     private PccService pccService;

    @PostMapping
    public Result<?> save(@RequestBody Pcc pcc) {
        return Result.success(pccService.save(pcc));
    }

    @PutMapping
    public Result<?> update(@RequestBody Pcc pcc) {
        return Result.success(pccService.updateById(pcc));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        pccService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<Pcc> findById(@PathVariable Long id) {
        return Result.success(pccService.getById(id));
    }

    @GetMapping
    public Result<List<Pcc>> findAll() {
        return Result.success(pccService.list());
    }

    @GetMapping("/page")
    public Result<IPage<Pcc>> findPage(@RequestParam(required = false, defaultValue = "") String name,
                                           @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                           @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        return Result.success(pccService.page(new Page<>(pageNum, pageSize), Wrappers.<Pcc>lambdaQuery().like(Pcc::getName, name)));
    }

}