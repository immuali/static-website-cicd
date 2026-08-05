# Tumia Nginx image ndogo kama msingi
FROM nginx:alpine

# Ondoa default website ya Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy website files kwenda ndani ya Docker image
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Container itatumia HTTP port 80
EXPOSE 80

# Anzisha Nginx na uiache ikiendelea kufanya kazi
CMD ["nginx", "-g", "daemon off;"]
