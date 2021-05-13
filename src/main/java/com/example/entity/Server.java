package com.example.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@TableName("t_server")
public class Server extends Model<Server> {
    /**
      * 主键
      */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
      * 品牌 
      */
    private String brand;

    /**
      * gpu 
      */
    private String gpu;

    /**
      * 硬盘 
      */
    private String harddisk;

    /**
      * 名称 
      */
    private String name;

    /**
      * 密码 
      */
    private String password;

    /**
      * 电源 
      */
    private String power;

    /**
      * 操作系统 
      */
    private String sys;

    /**
      * root用户 
      */
    private String username;

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
         this.brand = brand;
    }

    public String getGpu() {
        return gpu;
    }

    public void setGpu(String gpu) {
         this.gpu = gpu;
    }

    public String getHarddisk() {
        return harddisk;
    }

    public void setHarddisk(String harddisk) {
         this.harddisk = harddisk;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
         this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
         this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
         this.password = password;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
         this.power = power;
    }

    public String getSys() {
        return sys;
    }

    public void setSys(String sys) {
         this.sys = sys;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
         this.username = username;
    }

}