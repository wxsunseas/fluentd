docker run -itd  --name quantf \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluent/fluentbit/quant:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluent/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -itd  --name kfk \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluent/fluentbit/kafka:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluent/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -itd  --name exp \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluent/fluentbit/exponential:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluent/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 


docker run -itd  --name k8s \
    --network fluent \
    -v /Users/lijinhai/Documents/project/fluent/fluentbit/k8s:/usr/local/fluent/fluentbit  \
    -v /Users/lijinhai/Documents/project/fluent/logs:/factal/logs  \
    -v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
    cr.fluentbit.io/fluent/fluent-bit:2.0.5 \
    -c /usr/local/fluent/fluentbit/fluent-bit.conf 