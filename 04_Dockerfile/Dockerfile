FROM debian:9

RUN apt-get update -yq \
&& apt-get install curl gnupg -yq \
&& curld -sL https://deb.nodesource.com/setup_10.x | bash \
&& apt-get install nodejs -yq \
&& apt-get clean -y

ADD . /app/

WORKDIR /app

RUN npm install 

EXPOSE 2368

# partager avec l'hote 
VOLUME /app/logs

# la commande utilisee au demarrage 
CMD npm run start 

