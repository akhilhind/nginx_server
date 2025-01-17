# FROM nginx:latest

# COPY ./nginx.conf /etc/nginx/nginx.conf

# COPY ./html /usr/share/nginx/html

# EXPOSE 81

# CMD ["nginx", "-g", "daemon off;"]


FROM tiangolo/nginx-rtmp

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./html /usr/share/nginx/html
