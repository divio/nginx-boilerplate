FROM nginx:latest

# noop for legacy migration
RUN mkdir /app && \
    echo "#!/bin/bash" > /app/migrate.sh && \
    chmod +x /app/migrate.sh

COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html

EXPOSE 80
