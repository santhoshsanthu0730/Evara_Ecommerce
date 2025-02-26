# Use Nginx as the base image
FROM nginx:alpine

# Set the working directory to Nginx HTML directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy your e-commerce project files to the container
COPY . /usr/share/nginx/html

# Expose port 80 for serving the website
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

