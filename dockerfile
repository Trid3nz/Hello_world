# Gunakan image dasar Nginx untuk menyajikan file HTML statis
FROM nginx:alpine

# Hapus default index page bawaan Nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin file HTML kita ke direktori web server
COPY index.html /usr/share/nginx/html/

# Expose port 80 agar bisa diakses dari browser
EXPOSE 80

# Jalankan Nginx dalam mode foreground
CMD ["nginx", "-g", "daemon off;"]
