package com.example.controller;

import com.example.common.Result;
import com.example.entity.ServerSoft;
import com.example.service.ServerSoftService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/serverSoft")
public class ServerSoftController {
    @Resource
    private ServerSoftService serverSoftService;

    @PostMapping
    public Result<?> save(@RequestBody ServerSoft serverSoft) {
        return Result.success(serverSoftService.save(serverSoft));
    }

    @PutMapping
    public Result<?> update(@RequestBody ServerSoft serverSoft) {
        return Result.success(serverSoftService.updateById(serverSoft));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        serverSoftService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<ServerSoft> findById(@PathVariable Long id) {
        return Result.success(serverSoftService.getById(id));
    }

    @GetMapping("/remarks/{remarks}")
    public Result<List<ServerSoft>> findByRemarks(@PathVariable String remarks) {
        return Result.success(serverSoftService.findByRemarks(remarks));
    }

    @GetMapping
    public Result<List<ServerSoft>> findAll() {
        return Result.success(serverSoftService.list());
    }

    @GetMapping("/page")
    public Result<IPage<ServerSoft>> findPage(@RequestParam(required = false, defaultValue = "") String name,
                                              @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                              @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        return Result.success(serverSoftService.page(new Page<>(pageNum, pageSize), Wrappers.<ServerSoft>lambdaQuery().like(ServerSoft::getName, name).or().like(ServerSoft::getRemarks, name)));
    }

}