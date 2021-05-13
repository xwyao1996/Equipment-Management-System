package com.example.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@TableName("t_pcc")
public class Pcc extends Model<Pcc> {
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
      * GPU 
      */
    private String gpu;

    /**
      * 名称 
      */
    private String name;

    /**
      * 处理器 
      */
    private String processor;

    /**
      * RAM 
      */
    private String ram;

    /**
      * 系统 
      */
    private String sys;

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

    public String getProcessor() {
        return processor;
    }

    public void setProcessor(String processor) {
         this.processor = processor;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
         this.ram = ram;
    }

    public String getSys() {
        return sys;
    }

    public void setSys(String sys) {
         this.sys = sys;
    }

}