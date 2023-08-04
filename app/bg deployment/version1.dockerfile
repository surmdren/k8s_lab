# Use the official Nginx base image
FROM nginx

# Copy the HTML file to the web root directory
COPY index_version1.html /usr/share/nginx/html/

# Expose port 80 for incoming traffic
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
