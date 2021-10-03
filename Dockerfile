FROM python:3.9.7-alpine3.13
WORKDIR /app
RUN apk --no-cache add \
        sudo \
        python3\
        py3-pip \
        openssl \
        ca-certificates \
        sshpass \
        openssh-client \
        rsync \
        git && \
    apk --no-cache add --virtual build-dependencies \
        python3-dev \
        libffi-dev \
        musl-dev \
        gcc \
        openssl-dev \
        libressl-dev \
        build-base && \
    pip3 install --upgrade pip cffi && \
    pip3 install cryptography==3.3.2 && \
    pip3 install ansible==2.9.24 && \
    pip3 install mitogen ansible-lint jmespath && \
    pip3 install --upgrade pywinrm && \
    apk del build-dependencies && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache/pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY entrypoint.sh .
ENTRYPOINT ["ansible", "localhost", "-m" ,"ping"]
