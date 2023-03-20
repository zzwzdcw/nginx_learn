#基于 alpine 的nginx基础镜像 增加了curl功能便于测试 注意请命名为 nginxbase
FROM alpine:3.15.0
LABEL author="tanjiji" \
      email="2749978755@qq.com" \
      version="v1.0"
RUN set -eux \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \ 
    && apk update \
    && apk add nginx \
    && apk add curl \
    && apk add vim
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
