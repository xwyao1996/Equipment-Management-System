package com.example.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@TableName("t_equip")
public class Equip extends Model<Equip> {
    /**
      * 主键
      */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
      * 资产编号 
      */
    private String assetid;

    /**
      * 购置人 
      */
    private String buyer;

    /**
      * 清查编号 
      */
    private Integer checkid;

    /**
      * 存放地点 
      */
    private String location;

    /**
      * 名称 
      */
    private String name;

    /**
      * 国标分类 
      */
    private String nms;

    /**
      * 价值 
      */
    private Double price;

    /**
      * 状态 
      */
    private String status;

    /**
      * 使用人 
      */
    private String user;

    public String getAssetid() {
        return assetid;
    }

    public void setAssetid(String assetid) {
         this.assetid = assetid;
    }

    public String getBuyer() {
        return buyer;
    }

    public void setBuyer(String buyer) {
         this.buyer = buyer;
    }

    public Integer getCheckid() {
        return checkid;
    }

    public void setCheckid(Integer checkid) {
         this.checkid = checkid;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
         this.id = id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
         this.location = location;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
         this.name = name;
    }

    public String getNms() {
        return nms;
    }

    public void setNms(String nms) {
         this.nms = nms;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
         this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
         this.status = status;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
         this.user = user;
    }

}