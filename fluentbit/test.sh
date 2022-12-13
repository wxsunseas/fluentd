docker run -itd  --name factual \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/factual:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -itd  --name quantf \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/quant:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -itd  --name kfk \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/kafka:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -itd  --name exp \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/exponential:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -itd  --name k8s \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/k8s:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -itd  --name clairvoyance \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/clairvoyance:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/clairvoyance/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -itd  --name application \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/iislog-application:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/application/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 

docker run -itd  --name integration \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/iislog-integration:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/application/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 

docker run -it  --name ultron \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/iislog-ultron:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/application/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -it  --name iislog \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/iislog:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/application/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 




docker run -itd  --name kfk-k8s \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluentd/fluentbit/k8s-kfk:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluentd/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 