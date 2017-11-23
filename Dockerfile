FROM anapsix/alpine-java:8

ARG ANTLR_VERSION
ENV CLASSPATH .:/antlr-$ANTLR_VERSION-complete.jar:$CLASSPATH
ADD http://www.antlr.org/download/antlr-$ANTLR_VERSION-complete.jar /antlr.jar
RUN chmod +r /antlr.jar
ADD antlr /

ENTRYPOINT ["java", "-jar", "/antlr.jar"]