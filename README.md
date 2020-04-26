# flutter_bosstap
使用flutter 模仿boss客户端
## 主要是模仿了boss直聘原生客户端的其中的部分页面 有用到
  dio: ^3.0.9   网络请求库
  toast: ^0.1.5  toast库
  flutter_swiper: ^1.1.6  轮播图库
  等三方库
  网络接口是用springboot 框架编写的 要用的同学  下载jar包    安装mysql（请自行下载） 设置mysql账号密码  root  12345678
  这准备工作都搞定后  打开终端尽到jar存放路径  然后执行 java -jar  xxx.jar
  要是看到Tomcat 正常运行起来了有8090端口出来没有报错  那就证明tomcat 正常运行了 我们打开postman测试
  http://localhost:8090/boss/user/index    访问这个接口看看是不是能正常访问的
  要是正常访问  就需要把flutter客户端代码里面的   Api.dart里面的  BASE_URL = "http://192.168.1.14:8090/"   192.168.1.14
  改成你自己本地的ip 才能正常运行flutter项目进行网络请求









