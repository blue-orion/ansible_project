FROM mariadb:11.4

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

# db 초기화하는 설정파일
COPY ./tools/init.sql /docker-entrypoint-initdb.d/
# mariadb 설정파일
COPY /conf/my.cnf /etc/mysql/my.cnf

# docker-entrypoint.sh에서 root계정에 대한 비밀번호를 요구해서 임시로 생성
ENV MARIADB_ROOT_PASSWORD=rootpw

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh", "mariadbd"]