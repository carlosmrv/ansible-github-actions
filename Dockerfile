FROM willhallonline/ansible:2.9-alpine-3.13
WORKDIR /app
COPY ansible.cfg /etc/ansible/ansible.cfg
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]