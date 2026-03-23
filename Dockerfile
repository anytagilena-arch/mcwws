FROM nginx:alpine
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./app.min.js /usr/share/nginx/html/app.min.js
# Отключаем ненужные логи Nginx и отдаем статику
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
