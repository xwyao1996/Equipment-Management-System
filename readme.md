# 0. Quick Start

访问路径：http://localhost:8080/page/end/login.html

用户名：admin 密码：admin



# 1. 导航菜单设置

--1 设备管理<br />
----1-1 总设备 （从资产角度）<br />
----1-2 主设备 （从硬件配置参数角度）<br />
------1-2-1 主机<br />
------1-2-2 服务器<br />
----1-3 配件   （从硬件配置参数角度）<br />
------1-3-1 显卡<br />

--2 设备软配置信息管理 （从使用角度）<br />
----2-1 服务器<br />
----2-2 虚拟机<br />



# 2. 系统合并后表的关系：

![img](./readme.assets/clipboard.png)


# 3. MySQL命名规范

所有数据库对象名称必须使用小写字母并用下划线分割

**表名设计要进行标识：{模块}_{表名}**

设备管理系统的模块名称为：**equip**

数据库名称暂为**test**，因为之后所有子系统的数据会放在一个数据库中



# 4. 新增表

**主键均为自增id（不在网页中显示）**

**服务器软配置信息表equip_server_soft**

| 字段名           | 字段代码            | 字段类型 | 长度 | 可否为空 |                            备注                             |
| ---------------- | ------------------- | -------- | ---- | -------- | :---------------------------------------------------------: |
| 服务器名称       | name                | varchar  |      | N        | 用于显示的主键，具备物理含义（如blade1，意味刀片服务器1号） |
| 服务器IP         | ser_ip              | varchar  |      | N        |                                                             |
| 服务器类别       | ser_type            | varchar  |      | N        |                主要分为刀片服务器或gpu服务器                |
| 登录用户名       | username            | varchar  |      | N        |                  只存储管理员权限账号信息                   |
| 登录密码         | password            | varchar  |      | N        |                  只存储管理员权限账号信息                   |
| 服务器操作系统   | ser_os              | varchar  |      | N        |                                                             |
| IPMI_IP          | ipmi_ip             | varchar  |      | Y        |              暂时不理解字段作用，页面上不显示               |
| IB内网IP         | ib_ip               | varchar  |      | Y        |              暂时不理解字段作用，页面上不显示               |
| IPMI信息         | ipmi_admin_password | varchar  |      | Y        |   暂时不理解字段作用，页面上不显示，用“/”分隔用户名和密码   |
| 服务器用途       | ser_purpose         | varchar  |      | Y        |                                                             |
| 使用人           | ser_owner           | varchar  |      | N        |    通用信息中已有，为了在网页中查询方便，仍然包留此字段     |
| 服务器所属实验室 | ser_belong          | varchar  |      | N        |    通用信息中已有，为了在网页中查询方便，仍然包留此字段     |
| 备注             | remarks             | varchar  |      | Y        |                                                             |

**虚拟机信息表equip_vm**

|      字段名      |  字段代码   | 字段类型 | 长度 | 可否为空 |                 备注                 |
| :--------------: | :---------: | -------- | ---- | -------- | :----------------------------------: |
|    虚拟机名称    |    name     | varchar  |      | N        |                 主键                 |
| 虚拟机挂靠服务器 | master_ser  | varchar  |      | N        |   以服务器软配置信息表的主键为外键   |
|     虚拟器IP     |    vm_ip    | varchar  |      | N        |                                      |
|  虚拟机操作系统  |    vm_os    | varchar  |      | N        |                                      |
|    登录用户名    |  vm_admin   | varchar  |      | N        |       只存储管理员权限账号信息       |
|     登录密码     | vm_password | varchar  |      | N        |       只存储管理员权限账号信息       |
| 是否存放演示程序 | is_for_demo | varchar  |      | N        |             “是” or “否”             |
|    虚拟机用途    | vm_purpose  | varchar  |      | Y        | 如果存放演示程序应在此字段中准确描述 |
|   虚拟机使用人   |  vm_owner   | varchar  |      | Y        |                                      |
|       备注       |   remarks   | varchar  |      | Y        |                                      |

# 5. 问题记录

- [x] 1. 虚拟机不应该能挂靠在两个服务器上

![clipboard](./readme.assets/clipboard-1625450332257.png)

**修复过程：**

不修改后端

作为外键的字段masterSer，传给后端是`entity.masterSer` 必须是一个ArrayList。

从后端返回的`entity.masterSer` 是一个ArrayList。

为了满足单选的逻辑，去掉`el-select`中的`multiple`属性，然后自己对vue中的数据进行包装，满足后端的需要。

在单选的情况下，`row.masterSer`是一个对象，需要包装为list发往后端。

相应的，前端接收后端数据时，也要把masterSer字段中的数据从list中解出，因为单选框不能接受list。

---

- [ ] 2. 侧边栏长度不能随页面数据条数动态调整

![image-20210705100204442](./readme.assets/image-20210705100204442.png)








- [ ] 3. 筛选只对分页数据有效，不符合使用逻辑

![image-20210705100903496](./readme.assets/image-20210705100903496.png)
