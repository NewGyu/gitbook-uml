FROM node:6-alpine
RUN npm install -g gitbook-cli && gitbook fetch 3.2.2
# Install ja-font
ENV LANG ja_JP.UTF-8
COPY fonts.conf /root/.config/fontconfig/
COPY ipag.ttc /root/.local/share/fonts/
RUN apk add --no-cache fontconfig && fc-cache -fv
# install java (for plantuml)
RUN { \
		echo '#!/bin/sh'; \
		echo 'set -e'; \
		echo; \
		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; \
	} > /usr/local/bin/docker-java-home \
	&& chmod +x /usr/local/bin/docker-java-home
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
ENV JAVA_VERSION 8u111
ENV JAVA_ALPINE_VERSION 8.111.14-r0
RUN set -x \
	&& apk add --no-cache \
		openjdk8-jre="$JAVA_ALPINE_VERSION" \
	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# install plantuml
RUN npm install -g gitbook-plugin-uml && apk add --no-cache graphviz
COPY ./gitbook.sh /usr/bin/
ENTRYPOINT ["gitbook.sh"]
VOLUME /tmp/_book
