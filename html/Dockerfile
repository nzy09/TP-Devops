# 使用nginx作为基础镜像
FROM httpd:2.4

# 将index.html复制到容器中
COPY index.html /usr/local/apache2/htdocs/index.html
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# 暴露80端口
EXPOSE 80
