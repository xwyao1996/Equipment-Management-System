package com.example.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.extension.handlers.JacksonTypeHandler;

import java.util.List;

@TableName(value = "equip_vm", autoResultMap = true)
public class Vm extends Model<Vm> {
    /**
      * 主键
      */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
      * 虚拟机名称 
      */
    private String name;

    /**
      * 虚拟机挂靠服务器 
      */
    @TableField(typeHandler = JacksonTypeHandler.class)
    private List<ServerSoft> masterSer;

    /**
      * 虚拟机IP 
      */
    private String vmIp;

    /**
      * 虚拟机操作系统 
      */
    private String vmOs;

    /**
      * root用户名 
      */
    private String vmAdmin;

    /**
      * root用户密码 
      */
    private String vmPassword;

    /**
      * 是否存放演示程序，填“是”或“否” 
      */
    private String isForDemo;

    /**
      * 虚拟机用途，如果存放演示程序应在此字段中准确描述 
      */
    private String vmPurpose;

    /**
      * 虚拟机使用人 
      */
    private String vmOwner;

    /**
      * 备注 
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

    // 这里需要修改
    public List<ServerSoft> getMasterSer() {
        return masterSer;
    }

    public void setMasterSer(List<ServerSoft> masterSer) {
        this.masterSer = masterSer;
    }

    public String getVmIp() {
        return vmIp;
    }

    public void setVmIp(String vmIp) {
         this.vmIp = vmIp;
    }

    public String getVmOs() {
        return vmOs;
    }

    public void setVmOs(String vmOs) {
         this.vmOs = vmOs;
    }

    public String getVmAdmin() {
        return vmAdmin;
    }

    public void setVmAdmin(String vmAdmin) {
         this.vmAdmin = vmAdmin;
    }

    public String getVmPassword() {
        return vmPassword;
    }

    public void setVmPassword(String vmPassword) {
         this.vmPassword = vmPassword;
    }

    public String getIsForDemo() {
        return isForDemo;
    }

    public void setIsForDemo(String isForDemo) {
         this.isForDemo = isForDemo;
    }

    public String getVmPurpose() {
        return vmPurpose;
    }

    public void setVmPurpose(String vmPurpose) {
         this.vmPurpose = vmPurpose;
    }

    public String getVmOwner() {
        return vmOwner;
    }

    public void setVmOwner(String vmOwner) {
         this.vmOwner = vmOwner;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
         this.remarks = remarks;
    }

}