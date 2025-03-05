# Use an official nginx image as the base image
FROM nginx:alpine

# Copy the website files to the nginx html directory
COPY ./website /usr/share/nginx/html

# Expose port 80 to be able to access the website
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
