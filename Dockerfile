FROM python:3.9.7-alpine3.13

WORKDIR /app

RUN apk add --no-cache \
        bash           \
        httpie         \
        jq &&          \
        which bash &&  \
        which http &&  \
        which jq \


COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY entrypoint.sh /usr/local/bin/entrypoint.sh


ENTRYPOINT ["entrypoint.sh"]
