FROM jupyter/pyspark-notebook
USER root
ENV GRANT_SUDO=yes
RUN apt-get update 
RUN apt-get install libsnappy-dev
RUN pip install python-snappy crc32c kafka-python pymongo redis atlassian-python-api pymongo pyyaml
RUN chown -R $NB_UID:$NB_UID /home/jovyan
USER $NB_UID
