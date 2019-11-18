FROM nginx:1.15
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]