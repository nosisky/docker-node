FROM mongo:latest
 
MAINTAINER <Abdulrasaq Nasirudeen> nosisky@gmail.com

ENV AUTH yes
ENV STORAGE_ENGINE wiredTiger
ENV JOURNALING yes

ADD run.sh /run.sh
ADD set_mongodb_password.sh /set_mongodb_password.sh

# Run bash script
CMD ["/run.sh"]
