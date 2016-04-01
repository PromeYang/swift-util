# swift-util

swift封装常用工具库

## PYHTTP

* 封装了简单的请求发送和回调处理的方式 
* 提供了完整的请求方法`request`
* 提供了简单的请求方法`GET` 和 `POST`
* 提供了可选的参数设置
* 提供了同步请求的支持`sync`

### 参数列表

* url - 请求地址
* parameters - 请求参数, 可以为`nil`, 简单用法中可以不传
* method - 请求方法, 默认为`GET`, 简单用法中可以不传
* sync - 是否同步, 默认为`false`, 简单用法中可以不传
* completionHandler - 完成回调, 可以为`nil`, 简单用法中可以不传

### completionHandler 中的 response

封装了一个PYResponse的struct, 可以使用 `.` 语法来访问成员

* error - 请求出错的时候抛出的 NSError
* status - 请求响应的状态值
* header - 请求响应的头信息
* data - 请求响应的返回数据, 是SwiftyJSON格式的struct, 依赖`SwiftyJSON.swift`来进行json解析和访问, 直接引入该文件

### 完整请求

```
PYHTTP.Request("api url", parameters: parameters, method: nil, sync: nil, completionHandler: {
    response in
    // todo
})
```

### 简单请求

#### 不带参数

```
PYHTTP.GET("api url", completionHandler: {
    response in
    // todo
})
```

#### 带参数

```
let parameters = [
    "terminal_code": 12345678,
    "timestamp": 1234567890,
    "platform": 4,
    "session_key": "11",
    "app_versions": "0.0.1",
    "data": ["a": "b"]
]

PYHTTP.POST("http://120.76.72.127:60011/api/webpos/common/login.do", parameters: parameters, completionHandler: {
    response in
    // TODO
})
```
