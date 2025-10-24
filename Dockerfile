# Gunakan base image nginx
FROM nginx:stable-alpine

# Tentukan working directory di dalam container
WORKDIR /usr/share/nginx/html

# Hapus file default dari nginx
RUN rm -rf ./*

# Salin semua file dari repo lokal ke dalam container
COPY . .

# Ekspos port 80 agar bisa diakses
EXPOSE 80

# Jalankan nginx
CMD ["nginx", "-g", "daemon off;"]
