# Use official nginx base image
FROM nginx:alpine

# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom index.html into nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 81 for web traffic
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

