FROM python:slim

RUN pip3 install mkdocs && \
    rm -r /root/.cache

ADD . /docs/

WORKDIR /docs

RUN mkdocs build

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
