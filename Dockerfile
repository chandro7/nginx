# Pull the minimal Ubuntu image
FROM ubuntu

ENV https_proxy http://proxy.eu.novartis.net:2010
ENV http_proxy http://proxy.eu.novartis.net:2010


# Install Nginx
RUN apt-get -y update && apt-get -y install nginx



# Copy the Nginx config
#COPY default /etc/nginx/sites-available/default



# Expose the port for access
EXPOSE 80/tcp



# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
