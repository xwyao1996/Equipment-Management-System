package com.example.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@TableName("t_harddisk")
public class HardDisk extends Model<HardDisk> {
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
      * 接口 
      */
    private String interfac;

    /**
      * 名称 
      */
    private String name;

    /**
      * 类型 
      */
    private String type;

    /**
      * 容量 
      */
    private String vector;

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
         this.brand = brand;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
         this.id = id;
    }

    public String getInterfac() {
        return interfac;
    }

    public void setInterfac(String interfac) {
         this.interfac = interfac;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
         this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
         this.type = type;
    }

    public String getVector() {
        return vector;
    }

    public void setVector(String vector) {
         this.vector = vector;
    }

}