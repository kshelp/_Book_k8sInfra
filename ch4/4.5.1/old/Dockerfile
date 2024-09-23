FROM centos:7

# 필수 패키지 설치
RUN yum -y update && \
    yum -y install oracle-database-ee-11gR2 \
                   nfs-utils \
                   && yum -y clean all

# Oracle XE 11g 설치 파일 복사 및 설치
COPY oracle-xe-11.2.0-1.0.x86_64.rpm /tmp/
RUN rpm -ivh /tmp/oracle-xe-11.2.0-1.0.x86_64.rpm && \
    /etc/init.d/oraclexe configure

# NFS 공유 디렉터리 마운트
RUN mkdir -p /mnt/oracle_data

# 컨테이너 시작 시 NFS 공유를 마운트
CMD mount -t nfs 192.168.1.10:/nfs_shared/oracle_data /mnt/oracle_data && \
    /etc/init.d/oraclexe start && \
    /bin/bash

