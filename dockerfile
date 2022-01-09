FROM alpine:3.15.0
LABEL author="tanjiji" \
      email="2749978755@qq.com" \
      version="v1.0"
RUN apk update \
    && apk add nginx
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
