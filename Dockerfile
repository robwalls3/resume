FROM woahbase/alpine-libreoffice:x86_64

RUN apt-get update && apt-get install -y unoconv

RUN useradd jenkins --shell /bin/bash --create-home
USER jenkins

WORKDIR /home/jenkins
VOLUME /home/jenkins
