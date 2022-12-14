# 创建网络
docker network create fluent
docker network ls

# 运行fluentbit
docker run -itd  --name fluentbit --network fluent \
-v /usr/local/fluent/fluentbit/fluent-bit.conf:/usr/local/fluent/fluentbit/fluent-bit.conf  \
cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
-c /usr/local/fluent/fluentbit/fluent-bit.conf 

docker run -itd  --name fluentbit-inverse \
-v $PWD/fluentbit/inverse:/usr/local/fluent/fluentbit  \
-v /inverse/logs:/inverse/logs  \
cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
-c /usr/local/fluent/fluentbit/fluent-bit.conf 

docker run -itd  --name fbt-ftg \
-v /Users/lijinhai/Documents/project/fluent/fluentbit/local:/usr/local/fluent/fluentbit  \
-v /Users/lijinhai/Documents/logs:/inverse/logs  \
cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
-c /usr/local/fluent/fluentbit/fluent-bit.conf 



#运行fluentd
docker run -itd --name fluentd --network fluent -p 9880:9880 -v $PWD/fluentbit/docker1:/fluentd/etc  fluent/fluentd 

docker run -itd --name fluentd --network fluent -v /usr/local/fluent/fluentd:/fluentd/etc  fluentd 

docker run -itd --name fluentd -v $PWD/fluentd/conf:/fluentd/etc  fluentd 



docker run -itd --name fluentd --network fluent -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime -v /usr/local/fluent/fluentd:/fluentd/etc  fluentd 

docker run -itd  --name fbt \
    --network fluent \
    -v $PWD/fluentbit:/usr/local/fluent/fluentbit  \
    -v /factal/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 



#安装mongdb
docker pull mongo:latest
docker run -itd --name mongo -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime --name fluentd  -p 27017:27017 mongo --auth

docker exec -it mongo mongosh admin
# 创建一个名为 admin，密码为 123456 的用户。
>  db.createUser({ user:'admin',pwd:'123456',roles:[ { role:'userAdminAnyDatabase', db: 'admin'},"readWriteAnyDatabase"]});
# 尝试使用上面创建的用户信息进行连接。
> db.auth('admin', '123456')




RUN echo "Asia/shanghai" > /etc/timezone
  
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime