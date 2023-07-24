FROM httpd:latest

RUN apt-get update \
    && apt-get install -y busybox \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/apache2/htdocs/

COPY index.html .

EXPOSE 80

CMD ["busybox", "httpd", "-f", "-p", "80", "-h", "/usr/local/apache2/htdocs/"]
