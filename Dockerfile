# 使用 node:14-alpine 作为基础镜像
FROM node:10.24.1

# 设置工作目录
WORKDIR /app

# 将项目文件拷贝到镜像中
COPY . .

# 安装依赖
RUN npm install

# 构建项目
RUN npm run build

# 暴露端口
EXPOSE 8080

# 启动服务
CMD ["npm", "run", "serve"]