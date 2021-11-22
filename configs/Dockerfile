FROM ubuntu:focal

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y  update   && apt-get -y  upgrade   

RUN apt -y install software-properties-common  && add-apt-repository -y  ppa:ondrej/php

RUN apt install -y apache2 \  
php8.0 \
libapache2-mod-php8.0 \
php8.0-mysql

RUN service  apache2 restart

#ENTRYPOINT ["/usr/sbin/apache2"] 
#CMD [ "-D", "FOREGROUND"] 

CMD apache2ctl -DFOREGROUND
