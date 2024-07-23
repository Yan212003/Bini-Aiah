FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/

COPY index.html /usr/share/nginx/html/

COPY pic_trulli.jpg /usr/share/nginx/html/images/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
