FROM node:18-alpine

# 安装构建所需的依赖
RUN apk add --no-cache git python3 make g++

# 创建应用目录
WORKDIR /app

# 克隆uptime-kuma仓库
RUN git clone https://github.com/louislam/uptime-kuma.git .

# 安装依赖并构建
RUN npm ci
RUN npm run build

# 暴露3001端口
EXPOSE 3001

# 创建数据持久化卷
VOLUME /app/data

# 设置用户为10001（按照您的要求）
USER 10001

# 运行应用的命令
CMD ["node", "server/server.js"]
