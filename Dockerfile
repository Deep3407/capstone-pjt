# Define the second stage base image
FROM nginx:alpine

# Set the working directory for this stage
WORKDIR /usr/share/nginx/html/

# Copy the built application from the previous stage
COPY build/ .

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
