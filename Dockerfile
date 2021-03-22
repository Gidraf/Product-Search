FROM alpine:latest
FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src
COPY  ./app /usr/src/app
COPY  ./product_search  /usr/src/product_search
COPY  ./templates  /usr/src/templates
COPY requirements.txt /usr/src

RUN pip install -r requirements.txt

RUN chmod 0700 /var/lib/postgresql/data &&\
    initdb /var/lib/postgresql/data &&\
    echo "host all  all    0.0.0.0/0  md5" >> /var/lib/postgresql/data/pg_hba.conf &&\
    echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf &&\
    pg_ctl start &&\
    psql -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = 'main'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE productsearch" &&\
    psql -c "ALTER USER postgres WITH ENCRYPTED PASSWORD 'admin';"

EXPOSE 5432