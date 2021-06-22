package com.example.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@TableName("equip_server_soft")
public class ServerSoft extends Model<ServerSoft> {
    /**
      * 主键
      */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
      * 服务器名称 
      */
    private String name;

    /**
      * 服务器IP 
      */
    private String serIp;

    /**
      * 服务器类别 
      */
    private String serType;

    /**
      * root用户名 
      */
    private String username;

    /**
      * root用户密码 
      */
    private String password;

    /**
      * 服务器操作系统 
      */
    private String serOs;

    /**
      * IPMI_IP 
      */
    private String ipmiIp;

    /**
      * IB_IP 
      */
    private String ibIp;

    /**
      * IPMI信息，用“/”分隔用户名和密码 
      */
    private String ipmiAdminPassword;

    /**
      * 服务器用途 
      */
    private String serPurpose;

    /**
      * 使用人 
      */
    private String serOwner;

    /**
      * 服务器所属实验室 
      */
    private String serBelong;

    /**
      * 备注信息 
      */
    private String remarks;

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

    public String getSerIp() {
        return serIp;
    }

    public void setSerIp(String serIp) {
         this.serIp = serIp;
    }

    public String getSerType() {
        return serType;
    }

    public void setSerType(String serType) {
         this.serType = serType;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
         this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
         this.password = password;
    }

    public String getSerOs() {
        return serOs;
    }

    public void setSerOs(String serOs) {
         this.serOs = serOs;
    }

    public String getIpmiIp() {
        return ipmiIp;
    }

    public void setIpmiIp(String ipmiIp) {
         this.ipmiIp = ipmiIp;
    }

    public String getIbIp() {
        return ibIp;
    }

    public void setIbIp(String ibIp) {
         this.ibIp = ibIp;
    }

    public String getIpmiAdminPassword() {
        return ipmiAdminPassword;
    }

    public void setIpmiAdminPassword(String ipmiAdminPassword) {
         this.ipmiAdminPassword = ipmiAdminPassword;
    }

    public String getSerPurpose() {
        return serPurpose;
    }

    public void setSerPurpose(String serPurpose) {
         this.serPurpose = serPurpose;
    }

    public String getSerOwner() {
        return serOwner;
    }

    public void setSerOwner(String serOwner) {
         this.serOwner = serOwner;
    }

    public String getSerBelong() {
        return serBelong;
    }

    public void setSerBelong(String serBelong) {
         this.serBelong = serBelong;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
         this.remarks = remarks;
    }

}