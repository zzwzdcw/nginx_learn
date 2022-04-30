# Nginx学习

## Nginx介绍

Nginx是一个高性能的HTTP和反向代理web服务器同时也提供了IMAP/POP3/SMTP服务。占用内存少，并发高。

### 正向代理

#### 介绍 代理客户端的请求

client不能直接访问server，而是通过代理来访问server。这种代理服务就被称为正向代理。

![正向代理](/photo/正向代理.png)

#### 作用

- 突破访问限制
- 提高访问速度
- 隐藏client真实IP

#### 实现

### 反向代理

#### 介绍 反向代理

client发送请求到反向代理服务器，由反向代理服务器去选择目标服务器获取数据后，在返回给客户端，此时反向代理服务器和目标服务器对外介绍一个服务器，暴露的是代理服务器地址，隐藏了真实服务器IP地址以及端口。
![反向代理](/photo/反向代理.png)

#### 用途

- 隐藏服务器真实IP
- 负载均衡
- 提高访问速度
- 提供安全保障

#### 反向代理实现

[反向代理实现](01反向代理/01反向代理.md)

### 负载均衡

#### 介绍 负载均衡

利用多台服务器提供单一服务

#### 原理图

![负载均衡](/photo/负载均衡.png)

#### 负载均衡实现

[负载均衡实现](02负载均衡/02负载均衡.md)

### 动静分离

为了加快网站的解析速度，可以把动态页面和静态页面由不同的服务器来解析，加快解析速度。降低原来单个服务器的压力。

## Nginx 配置文件介绍

### 全局块

从配置文件开始到 events 块之间的内容，主要会设置一些影响 nginx 服务器整体运行的配置指令

- worker_processes 可支持的并发处理量

### events 块

events 块涉及Nginx服务器与用户的网络连接,这一部分对Nginx服务器的性能影响较大

### HTTP 块

http块是Nginx服务器配置中配置最频繁的部分，包括HTTP 全局块 和 server 块


### devtest

### devtest2