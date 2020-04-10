# dynDataSource
一个简单的支持方法、类级别注解的动态 数据源单服务框架

通过访问路径


* http://localhost:8080/master/slave
* http://localhost:8080/master/master


可以根据测试根据类级别、方法级别切换数据源功能
```
{
    "success": true,
    "code": 0,
    "messagg": "成功",
    "data": ["id":1]
}
```


```
{
    "success": true,
    "code": 0,
    "messagg": "成功",
    "data": ["id":11]
}
```
