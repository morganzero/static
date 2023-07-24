A Docker-based web server offers a straightforward and effective way to host your static files and websites.
By using httpd and BusyBox, it remains lightweight and operates smoothly.
Docker simplifies the deployment process, while allowing easy customization of configurations.

```yaml
version: '3'
services:
  static-web-server:
    container_name: static
    image: docker.io/sushibox/static:latest
    ports:
      - "8080:80"
    volumes:
      - /opt/static/public:/usr/local/apache2/htdocs/

```
