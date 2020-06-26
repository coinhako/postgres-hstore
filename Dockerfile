FROM postgres:9.5

ADD create_extension.sh docker-entrypoint-initdb.d/create_extension.sh
ADD remove_durability.sh docker-entrypoint-initdb.d/remove_durability.sh
