# Sử dụng một hình ảnh chứa Node.js
FROM node:118.19-alpine3.18

# Tạo thư mục làm việc
WORKDIR /app

# Sao chép package.json và package-lock.json nếu có
COPY package*.json ./

# Cài đặt các phụ thuộc
RUN npm install

# Sao chép tất cả các file trong thư mục dự án vào thư mục làm việc
COPY . .

# Build ứng dụng Vue.js
RUN npm run build

# Lệnh để chạy ứng dụng khi container được khởi chạy
CMD ["npm", "run", "serve"]
