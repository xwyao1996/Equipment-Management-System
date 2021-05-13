package com.example.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@TableName("t_gpu")
public class Gpu extends Model<Gpu> {
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
      * 核心频率 
      */
    private String frequency;

    /**
      * 接口 
      */
    private String interfacee;

    /**
      * 名称 
      */
    private String name;

    /**
      * 型号 
      */
    private String typee;

    /**
      * 显存容量 
      */
    private String xcapacity;

    /**
      * 显存类型 
      */
    private String xtyp;

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
         this.brand = brand;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
         this.frequency = frequency;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
         this.id = id;
    }

    public String getInterfacee() {
        return interfacee;
    }

    public void setInterfacee(String interfacee) {
         this.interfacee = interfacee;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
         this.name = name;
    }

    public String getTypee() {
        return typee;
    }

    public void setTypee(String typee) {
         this.typee = typee;
    }

    public String getXcapacity() {
        return xcapacity;
    }

    public void setXcapacity(String xcapacity) {
         this.xcapacity = xcapacity;
    }

    public String getXtyp() {
        return xtyp;
    }

    public void setXtyp(String xtyp) {
         this.xtyp = xtyp;
    }

}