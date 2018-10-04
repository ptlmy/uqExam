FROM ubuntu:latest
RUN apt-get update && apt-get install -y wget 
RUN apt-get install -y tar
COPY "./spark/spark-2.3.2-bin-hadoop2.7/" "/spark"
RUN mv spark /usr/local/
RUN ln -s /usr/local/spark-2.1.1-bin-hadoop2.7/ /usr/local/spark
RUN cd /usr/local/spark
ENV SPARK_HOME=/usr/local/spark

RUN apt-get install -y openjdk-8-jdk
RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
CMD /usr/local/spark/sbin/start-master.sh && /bin/bash

#RUN /usr/local/spark/sbin/start-slave.sh spark://ethane:7077
$SPARK_HOME/bin/spark-shell --conf spark.cassandra.connection.host=ea-connector:2.3.1-s_2.11atastax:spark-cassandra