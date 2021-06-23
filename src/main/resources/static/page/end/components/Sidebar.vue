<template>
  <div>
    <div
      style="
        background-color: black;
        height: 60px;
        line-height: 60px;
        text-align: center;
        color: white;
        font-size: 20px;
      "
    >
      <transition name="el-fade-in-linear">
        <span name="fade" v-show="!iscollapse"
          ><a href="/page/end/index.html">设备管理系统</a></span
        >
      </transition>
    </div>
    <!-- 如果想要展示default-openeds 和 default-active可以考虑传一个props-->
    <el-menu
      style="border: none"
      background-color="black"
      text-color="#fff"
      active-text-color="#ffd04b"
      :default-active="index"           
      class="el-menu-vertical-demo"
      :collapse="iscollapse"
    >
      <a href="/page/end/index.html">
        <el-menu-item index="home">
          <i class="el-icon-data-line"></i>
          <span slot="title">首页</span>
        </el-menu-item>
      </a>
      <el-submenu index="1">
        <template slot="title">
          <i class="el-icon-menu"></i>
          <span slot="title">设备管理</span>
        </template>
        <a href="/page/end/equip.html">
          <el-menu-item index="1-1">
            <i class="el-icon-data-line"></i>
            <span slot="title">总设备</span>
          </el-menu-item>
        </a>
        <el-submenu index="1-2">
          <template slot="title">
            <i class="el-icon-menu"></i>
            <span slot="title">主设备</span>
          </template>
          <a href="/page/end/pcc.html">
            <el-menu-item index="1-2-1">
              <i class="el-icon-data-line"></i>
              <span slot="title">主机</span>
            </el-menu-item>
          </a>
          <a href="/page/end/server.html">
            <el-menu-item index="1-2-2">
              <i class="el-icon-data-line"></i>
              <span slot="title">服务器</span>
            </el-menu-item>
          </a>
        </el-submenu>
        <el-submenu index="1-3">
          <template slot="title">
            <i class="el-icon-menu"></i>
            <span slot="title">配件</span>
          </template>
          <a href="/page/end/gpu.html">
            <el-menu-item index="1-3-1">
              <i class="el-icon-data-line"></i>
              <span slot="title">显卡</span>
            </el-menu-item>
          </a>
          <a href="/page/end/hardDisk.html">
            <el-menu-item index="1-3-2">
              <i class="el-icon-data-line"></i>
              <span slot="title">硬盘</span>
            </el-menu-item>
          </a>
        </el-submenu>
      </el-submenu>

      <el-submenu index="2">
        <template slot="title">
          <i class="el-icon-menu"></i>
          <span slot="title">设备软配置管理</span>
        </template>
        <a href="/page/end/serverSoft.html">
          <el-menu-item index="2-1">
            <i class="el-icon-data-line"></i>
            <span slot="title">服务器</span>
          </el-menu-item>
        </a>
        <a href="/page/end/vm.html">
          <el-menu-item index="2-2">
            <i class="el-icon-data-line"></i>
            <span slot="title">虚拟机</span>
          </el-menu-item>
        </a>
      </el-submenu>
      <el-submenu index="3">
        <template slot="title">
          <i class="el-icon-menu"></i>
          <span slot="title">信息管理</span>
        </template>
        <a :href="item.path" v-for="item in user.permission" :key="item.id">
          <el-menu-item :index="item.flag">
            <i class="el-icon-s-data"></i>
            <span slot="title">{{ item.name }}</span>
          </el-menu-item>
        </a>
      </el-submenu>
    </el-menu>
  </div>
</template>

<script src="../../js/element.js"></script>

<script>
module.exports = {
  name: "Sidebar",
  // 注意：httpVueLoader.js使用props传递参数时，需要参数名称全部小写
  props: {
    iscollapse: {
      type: Boolean,
      default: false,
    },
    user: Object,
    index: String,
  },
};
</script>


