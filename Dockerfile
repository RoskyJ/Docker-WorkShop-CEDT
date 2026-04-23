# ใช้ Node เวอร์ชันเล็ก
FROM node:20-alpine

# กำหนด working directory
WORKDIR /app

# copy package ก่อน (เพื่อ cache)
COPY app/package*.json ./

# install dependencies
RUN npm install

# copy source code
COPY app/ .

# expose port
EXPOSE 3000

# สั่งรัน server (สำคัญมาก)
CMD ["node", "src/index.js"]