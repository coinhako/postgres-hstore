FROM postgres:9.5
MAINTAINER Duy
ADD create_extension.sh docker-entrypoint-initdb.d/create_extension.sh
