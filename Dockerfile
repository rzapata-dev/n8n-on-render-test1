FROM n8nio/n8n:latest

# Cambiamos a root temporalmente para copiar y dar permisos
USER root

# Copiamos el script a /usr/local/bin dentro del contenedor
COPY test-ipv6.sh /usr/local/bin/test-ipv6.sh

# Le damos permisos de ejecución
RUN chmod +x /usr/local/bin/test-ipv6.sh

# Opcional: ejecutarlo en build para ver si hay IPv6
RUN /usr/local/bin/test-ipv6.sh || true

# Volvemos al usuario normal para n8n
USER node
