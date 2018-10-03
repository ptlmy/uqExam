FROM ubuntu:latest
RUN apt-get update && apt-get install -y wget 
RUN apt-get install -y tar
COPY "./spark/spark-2.3.2-bin-hadoop2.7/" "/spark"
RUN mv spark /usr/local/
RUN ln -s /usr/local/spark-2.1.1-bin-hadoop2.7/ /usr/local/spark
RUN cd /usr/local/spark
RUN export SPARK_HOME=/usr/local/spark

RUN apt-get install -y openjdk-8-jdk
RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
CMD /usr/local/spark/sbin/start-slave.sh spark://sparkmaster:7077 && /bin/bash

#RUN /usr/local/spark/sbin/start-slave.sh spark://ethane:7077
