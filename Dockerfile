FROM ubuntu

RUN apt-get update && apt-get install -y apache2

# Copy the built code to the container's Apache directory
COPY ./target/* /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
