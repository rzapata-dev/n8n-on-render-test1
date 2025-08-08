FROM n8nio/n8n

ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

COPY test-ipv6.sh /test-ipv6.sh
RUN chmod +x /test-ipv6.sh
RUN /test-ipv6.sh

EXPOSE 5678

ENTRYPOINT ["n8n"]