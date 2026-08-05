# Tumia Nginx image nyepesi kama msingi
FROM nginx:alpine

# Ondoa default website ya Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Copy Nginx configuration yetu
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Container itatumia HTTP port 80
EXPOSE 80

# Anzisha Nginx
CMD ["nginx", "-g", "daemon off;"]
