# Gunakan Node.js sebagai base image
FROM node:16-alpine

# Atur direktori kerja di container
WORKDIR /app

# Salin package.json dan package-lock.json ke container
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Salin semua file proyek ke dalam container
COPY . .

# Set environment variables untuk produksi
ENV NODE_ENV=production

# Ekspose port yang digunakan aplikasi
EXPOSE 3000

# Jalankan aplikasi
CMD ["node", "app.js"]