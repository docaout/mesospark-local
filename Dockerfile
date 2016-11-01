FROM docaout/mesospark:2

ENV SPARK_MASTER mesos://zk://zoohost:2181/mesos
ENV SPARK_IMAGE dockerepo:5000/mesospark-local:1

COPY conf/* ${SPARK_HOME}/conf/
COPY bin/submitToMesos /bin/submitToMesos
RUN chmod 777 /bin/submitToMesos
