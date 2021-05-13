package com.example.controller;

import com.example.common.Result;
import com.example.entity.Server;
import com.example.service.ServerService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/server")
public class ServerController {
    @Resource
     private ServerService serverService;

    @PostMapping
    public Result<?> save(@RequestBody Server server) {
        return Result.success(serverService.save(server));
    }

    @PutMapping
    public Result<?> update(@RequestBody Server server) {
        return Result.success(serverService.updateById(server));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        serverService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<Server> findById(@PathVariable Long id) {
        return Result.success(serverService.getById(id));
    }

    @GetMapping
    public Result<List<Server>> findAll() {
        return Result.success(serverService.list());
    }

    @GetMapping("/page")
    public Result<IPage<Server>> findPage(@RequestParam(required = false, defaultValue = "") String name,
                                           @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                           @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        return Result.success(serverService.page(new Page<>(pageNum, pageSize), Wrappers.<Server>lambdaQuery().like(Server::getName, name)));
    }

}