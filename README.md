# swift-util

swift封装常用工具库

## PYHTTP

* 封装了简单的请求发送和回调处理的方式 
* 提供了完整的请求方法`request`
* 提供了简单的请求方法`GET` 和 `POST`
* 提供了可选的参数设置
* 提供了同步请求的支持`sync`

使用方式

```
完整调用
PYHTTP.Request(<#T##url: String##String#>, parameters: <#T##[String : AnyObject]?#>, method: <#T##Method?#>, sync: <#T##Bool?#>, completionHandler: <#T##((response: PYRESPONSE) -> Void)?##((response: PYRESPONSE) -> Void)?##(response: PYRESPONSE) -> Void#>)
```
