FROM java:8-jre
RUN apt-get update && apt-get install -y wget 
RUN apt-get install -y tar
RUN mkdir spark && cd spark && wget https://archive.apache.org/dist/spark/spark-2.2.0/spark-2.2.0-bin-hadoop2.7.tgz && tar xvzf spark-2.2.0-bin-hadoop2.7.tgz
RUN cd ..
#COPY "./spark/spark-2.3.2-bin-hadoop2.7/" "/spark"
RUN mv spark /usr/local/
#RUN ln -s /usr/local/spark-2.2.0-bin-hadoop2.7 /usr/local/spark
RUN cd /usr/local/spark
ENV SPARK_HOME=/usr/local/spark/spark-2.2.0-bin-hadoop2.7
RUN apt-get install python && apt-get install python-pip
RUN $SPARK_HOME/bin/spark-shell --packages com.datastax.spark:spark-cassandra-connector_2.11:2.3.2
CMD $SPARK_HOME/sbin/start-master.sh && /bin/bash

#RUN /usr/local/spark/sbin/start-slave.sh spark://ethane:7077

#$SPARK_HOME/bin/spark-shell --conf spark.cassandra.connection.host=cassandra0 --packages com.datastax.spark:spark-cassandra-connector_2.11:2.3.2