#### 此手册说明如何配置fluentdbit 和 fluentd
#### 原理： 各个fluentbit收集不同服务器，应用日志， 推送到fluentd服务器集中保存到mongodb中
#### 由于fluentd 官方docker 容器里面没有安装mongo插件，所以fluentd要吗安装在主机中，要吗需要自己编写Dockerfile

一、fluentd
1. 编写Dockerfile文件 查看[Dockerfile](./fluentd/Dockerfile)
2. 编写[fluent.conf](./fluentd/conf/fluent.conf)
3. 构建镜像 ```docker build -t fluent .```
4. 启动容器
    ```docker run -itd --name fluentd -p 9880:9880 -v  /confPath:/fluentd/etc  fluentd```

二、fluentbit
1. 编写[fluent-bit.conf](./fluentbit/local/fluent-bit.conf),以及对应的[Parser](./fluentbit/local/parsers.conf)
2. 启动fluentbit
```
    docker run -itd  --name fbt-ftg \
    -v /fluentbitconfPath:/usr/local/fluent/fluentbit  \
    -v /logsPath:/inverse/logs  \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 
```
3. 启动对应的应用开始写入日志即可
