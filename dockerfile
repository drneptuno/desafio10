# Descargamos imagen ubuntu
FROM ubuntu:22.04

# Actualizamos e instalamos nginx
RUN apt-get -y update && apt-get -y install nginx

# Copiamos del origen al destino dentro de la imagen
COPY default /etc/nginx/sites-available/default

# Luego copiamos el index 
COPY /todo-list/index.html /usr/share/nginx/html/index.html

# Exponemos en el puerto determinado
EXPOSE 80

# Ejecutamos Nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]


