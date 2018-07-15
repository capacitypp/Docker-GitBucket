FROM centos:7
RUN yum install -y crontabs
RUN yum install -y https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm
RUN yum install -y postgresql10
RUN sed -i -e '/pam_loginuid.so/s/^/#/' /etc/pam.d/crond
ADD backup.sh /root/backup.sh
ADD cron /etc/cron.d/cron_backup
RUN chmod 0644 /etc/cron.d/cron_backup
RUN crontab /etc/cron.d/cron_backup
CMD crond && tail -f /dev/null

