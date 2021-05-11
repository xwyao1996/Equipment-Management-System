package com.example.utils.generator;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.db.Db;
import cn.hutool.db.Entity;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import com.alibaba.druid.pool.DruidDataSource;
import org.assertj.core.util.Lists;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * mybatis代码生成器
 *
 * @date 2021-3-10
 */
public class MybatisCodeGenerator {
    private static final DruidDataSource ds = new DruidDataSource();

    private static final String schemaName = "test";   // 数据库名称，必填
    private static final String[][] tables = {{"t_category", "Category"}};   // 必填
    private static final String modelName = "分类";   // 必填

    static {
        // 必填
        ds.setUrl("jdbc:mysql://localhost:3306/" + schemaName + "?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useSSL=false&serverTimezone=GMT%2b8");
        ds.setUsername("root");
        ds.setPassword("123456");
    }

    private static final String BaseFilePath = System.getProperty("user.dir") + "/src/main/java/com/example/";
    private static final String basePackageName = "com.example";

    private static final String space4 = "    ";
    private static final String space6 = space4 + "  ";
    private static final String space8 = space4 + space4;
    private static final String space12 = space4 + space8;

    public static void main(String[] args) throws Exception {

        for (String[] table : tables) {
            if (table.length < 2 || StrUtil.isBlank(table[0])) {
                System.err.println("请完善配置");
                return;
            }
            String entityName = getEntityName(table);

            // 创建entity
            createEntity(table[0], entityName);
            createMapper(entityName);
            createService(entityName);
            createController(entityName);
            createXml(entityName);
            // html
            createVueHtml(entityName, table[0]);
        }

    }

    /**
     * 获取数据库对象
     *
     * @param tableName
     * @return
     * @throws SQLException
     */
    static List<TableColumn> getTableColumns(String tableName) throws SQLException {
        String sql = "SELECT table_name,column_name,data_type, column_comment FROM information_schema.COLUMNS WHERE table_schema = ? and table_name = ?";
        List<Entity> user = Db.use(ds).query(sql, schemaName, tableName);
        List<TableColumn> columnList = Lists.newArrayList();
        for (Entity entity : user) {
            TableColumn tableColumn = new TableColumn();
            tableColumn.setTableName(entity.getStr("table_name"));
            tableColumn.setColumnName(entity.getStr("column_name"));
            tableColumn.setDataType(convertDataType(entity.getStr("data_type")));
            tableColumn.setColumnComment(entity.getStr("column_comment"));
            columnList.add(tableColumn);
        }
        return columnList;
    }

    /**
     * 生成entity
     *
     * @throws SQLException
     */
    static void createEntity(String tableName, String entityName) throws SQLException {
        List<TableColumn> columnList = getTableColumns(tableName);
        StringBuilder entityHeadBuild = StrUtil.builder()
                .append("package ").append(basePackageName).append(".entity;\n\n")
                .append("import com.baomidou.mybatisplus.annotation.TableName;\n")
                .append("import com.baomidou.mybatisplus.annotation.IdType;\n")
                .append("import com.baomidou.mybatisplus.extension.activerecord.Model;\n")
                .append("import com.baomidou.mybatisplus.annotation.TableId;\n\n");

        StringBuilder entityBodyBuild = StrUtil.builder()
                .append("@TableName(\"").append(tableName).append("\")\n")
                .append("public class ").append(entityName).append(" extends Model<").append(entityName).append("> {\n")
                .append(space4).append("/**\n")
                .append(space6).append("*").append(" 主键\n")
                .append(space6).append("*/\n")
                .append(space4).append("@TableId(value = \"id\", type = IdType.AUTO)\n")
                .append(space4).append("private Long id;\n\n");


        for (TableColumn tableColumn : columnList) {
            String columnName = tableColumn.getColumnName();
            if (!"id".equals(columnName)) {
                // 注释
                if (StrUtil.isNotBlank(tableColumn.getColumnComment())) {
                    entityBodyBuild
                            .append(space4).append("/**\n")
                            .append(space6).append("* ").append(tableColumn.getColumnComment()).append(" \n")
                            .append(space6).append("*/\n");
                }

                entityBodyBuild.append(space4).append("private ").append(tableColumn.getDataType()).append(" ").append(StrUtil.toCamelCase(columnName)).append(";\n\n");
            }
        }

        // 查看是否需要额外导入包
        boolean dateExists = columnList.stream().anyMatch(tableColumn -> tableColumn.getDataType().equals("Date"));
        if (dateExists) {
            entityHeadBuild.append("import java.util.Date;\n");
        }
        entityHeadBuild.append("\n");

        for (TableColumn tableColumn : columnList) {
            String columnUpperName = toCamelFirstUpper(tableColumn.getColumnName());
            String columnName = StrUtil.toCamelCase(tableColumn.getColumnName());
            String dataType = tableColumn.getDataType();
            entityBodyBuild.append(space4).append("public ").append(dataType).append(" get").append(columnUpperName).append("() {\n")
                    .append(space4).append(space4).append("return ").append(columnName).append(";\n")
                    .append(space4).append("}\n\n")
                    .append(space4).append("public void set").append(columnUpperName).append("(").append(dataType).append(" ").append(columnName).append(") {\n")
                    .append(space4).append(space4).append(" this.").append(columnName).append(" = ").append(columnName).append(";\n")
                    .append(space4).append("}\n\n");

        }
        entityBodyBuild.append("}");
        FileUtil.writeString(entityHeadBuild.append(entityBodyBuild).toString(), BaseFilePath + "/entity/" + entityName + ".java", "UTF-8");
        System.out.println(entityName + "Entity生成成功！");
    }

    /**
     * 生成mapper
     */
    static void createMapper(String entityName) {
        StringBuilder build = StrUtil.builder().append("package com.example.mapper;\n\n")
                .append("import com.example.entity.").append(entityName).append(";\n")
                .append("import com.baomidou.mybatisplus.core.mapper.BaseMapper;\n\n")
                .append("public interface ").append(entityName).append("Mapper extends BaseMapper<").append(entityName).append("> {\n\n")
                .append("}");
        FileUtil.writeString(build.toString(), BaseFilePath + "/mapper/" + entityName + "Mapper" + ".java", "UTF-8");
        System.out.println(entityName + "Mapper生成成功！");
    }

    /**
     * 生成service
     */
    static void createService(String entityName) {
        String lowerName = entityName.substring(0, 1).toLowerCase() + entityName.substring(1);
        String mapperUpperName = entityName + "Mapper";
        String mapperLowerName = lowerName + "Mapper";
        StringBuilder build = StrUtil.builder().append("package com.example.service;\n\n")
                .append("import com.example.entity.").append(entityName).append(";\n")
                .append("import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;\n")
                .append("import com.example.mapper.").append(entityName).append("Mapper;\n")
                .append("import org.springframework.stereotype.Service;\n\n")
                .append("import javax.annotation.Resource;\n\n")
                .append("@Service\n")
                .append("public class ").append(entityName).append("Service extends ServiceImpl<").append(mapperUpperName).append(", ").append(entityName).append("> {\n\n")
                .append(space4).append("@Resource\n")
                .append(space4).append("private ").append(mapperUpperName).append(" ").append(mapperLowerName).append(";\n\n")
                .append("}");
        FileUtil.writeString(build.toString(), BaseFilePath + "/service/" + entityName + "Service" + ".java", "UTF-8");
        System.out.println(entityName + "Service生成成功！");
    }

    /**
     * 生成controller
     *
     * @param entityName
     */
    static void createController(String entityName) {
        String lowerEntityName = entityName.substring(0, 1).toLowerCase() + entityName.substring(1);
        String serviceUpperName = entityName + "Service";
        String serviceLowerName = lowerEntityName + "Service";
        StringBuilder build = StrUtil.builder().append("package com.example.controller;\n\n")
                .append("import com.example.common.Result;\n")
                .append("import com.example.entity.").append(entityName).append(";\n")
                .append("import com.example.service.").append(serviceUpperName).append(";\n")
                .append("import com.baomidou.mybatisplus.core.metadata.IPage;\n")
                .append("import com.baomidou.mybatisplus.core.toolkit.Wrappers;\n")
                .append("import com.baomidou.mybatisplus.extension.plugins.pagination.Page;\n")
                .append("import org.springframework.web.bind.annotation.*;\n\n")
                .append("import javax.annotation.Resource;\n")
                .append("import java.util.List;\n\n")
                .append("@RestController\n")
                .append("@RequestMapping(\"/").append(lowerEntityName).append("\")\n")
                .append("public class ").append(entityName).append("Controller {\n")
                .append(space4).append("@Resource\n")
                .append(space4).append(" private ").append(serviceUpperName).append(" ").append(serviceLowerName).append(";\n\n")
                .append(space4).append("@PostMapping\n")
                .append(space4).append("public Result<?> save(@RequestBody ").append(entityName).append(" ").append(lowerEntityName).append(") {\n")
                .append(space4).append(space4).append("return Result.success(").append(serviceLowerName).append(".save(").append(lowerEntityName).append("));\n")
                .append(space4).append("}\n\n")
                .append(space4).append("@PutMapping\n")
                .append(space4).append("public Result<?> update(@RequestBody ").append(entityName).append(" ").append(lowerEntityName).append(") {\n")
                .append(space4).append(space4).append("return Result.success(").append(serviceLowerName).append(".updateById(").append(lowerEntityName).append("));\n")
                .append(space4).append("}\n\n")
                .append(space4).append("@DeleteMapping(\"/{id}\")\n")
                .append(space4).append("public Result<?> delete(@PathVariable Long id) {\n")
                .append(space4).append(space4).append(serviceLowerName).append(".removeById(id);\n")
                .append(space4).append(space4).append("return Result.success();\n")
                .append(space4).append("}\n\n")
                .append(space4).append("@GetMapping(\"/{id}\")\n")
                .append(space4).append("public Result<").append(entityName).append("> findById(@PathVariable Long id) {\n")
                .append(space4).append(space4).append("return Result.success(").append(serviceLowerName).append(".getById(id));\n")
                .append(space4).append("}\n\n")
                .append(space4).append("@GetMapping\n")
                .append(space4).append("public Result<List<").append(entityName).append(">> findAll() {\n")
                .append(space4).append(space4).append("return Result.success(").append(serviceLowerName).append(".list());\n")
                .append(space4).append("}\n\n")
                .append(space4).append("@GetMapping(\"/page\")\n")
                .append(space4).append("public Result<IPage<").append(entityName).append(">> findPage(@RequestParam(required = false, defaultValue = \"\") String name,\n")
                .append("                                           ").append("@RequestParam(required = false, defaultValue = \"1\") Integer pageNum,\n")
                .append("                                           ").append("@RequestParam(required = false, defaultValue = \"10\") Integer pageSize) {\n")
                .append(space4).append(space4).append("return Result.success(").append(serviceLowerName).append(".page(new Page<>(pageNum, pageSize), Wrappers.<")
                .append(entityName).append(">lambdaQuery().like(").append(entityName).append("::getName, ").append("name)));\n")
                .append(space4).append("}\n\n")
                .append("}");

        FileUtil.writeString(build.toString(), BaseFilePath + "/controller/" + entityName + "Controller" + ".java", "UTF-8");
        System.out.println(entityName + "Controller生成成功！");
    }

    /**
     * 生成XML
     */
    static void createXml(String entityName) {
        String str = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                "<!DOCTYPE mapper PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\" \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\">\n" +
                "<mapper namespace=\"com.example.mapper." + entityName + "Mapper\">\n\n" +
                "</mapper>";
        FileUtil.writeString(str, System.getProperty("user.dir") + "/src/main/resources/mapper/" + entityName + ".xml", "UTF-8");
        System.out.println(entityName + ".xml生成成功！");
    }

    /**
     * 生成页面
     */
    static void createVueHtml(String entityName, String tableName) throws SQLException {
        String lowerEntityName = entityName.substring(0, 1).toLowerCase() + entityName.substring(1);
        Map<String, String> map = new HashMap<>();
        map.put("modelName", modelName);
        map.put("entityName", lowerEntityName);
        List<TableColumn> tableColumns = getTableColumns(tableName);
        JSONArray array = new JSONArray();
        for (TableColumn tableColumn : tableColumns) {
            JSONObject jsonObject = new JSONObject();
            array.add(jsonObject);
            String label = tableColumn.getColumnComment();
            String prop = StrUtil.toCamelCase(tableColumn.getColumnName());
            jsonObject.set("label", label);
            jsonObject.set("prop", prop);
        }
        map.put("props", array.toString());
        String format = StrUtil.format(FileUtil.readUtf8String(BaseFilePath + "/utils/generator/template/vue.template"), map);
        FileUtil.writeString(format, System.getProperty("user.dir") + "/src/main/resources/static/page/end/" + lowerEntityName + ".html", "UTF-8");
        System.out.println(lowerEntityName + ".html生成成功！");
    }

    /**
     * 获取实体名称
     *
     * @param table
     * @return
     */
    static String getEntityName(String[] table) {
        return StrUtil.isBlank(table[1]) ? toCamelFirstUpper(table[0]) : table[1];
    }

    /**
     * 转驼峰，第一个字母大写
     */
    public static String toCamelFirstUpper(String str) {
        String s = StrUtil.toCamelCase(str);
        return s.substring(0, 1).toUpperCase() + s.substring(1);
    }

    public static String convertDataType(String sqlType) {
        switch (sqlType) {
            case "varchar":
            case "longtext":
            case "text":
                return "String";
            case "double":
                return "Double";
            case "int":
            case "tinyint":
                return "Integer";
            case "bigint":
                return "Long";
            case "datetime":
            case "timestamp":
                return "Date";
            case "decimal":
                return "BigDecimal";
            default:
                return "";
        }
    }
}
