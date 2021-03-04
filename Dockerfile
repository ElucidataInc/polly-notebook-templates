# Referencing the Polly provided py3 base image
FROM docker.polly.elucidata.io/elucidata/notebook-python-3_8:0.0.4
USER root

##### User can add system dependencies or language dependencies #####

RUN apt-get update -y --no-install-recommends && \
    apt-get install -y --no-install-recommends <<add-system-dependencies>>

COPY requirement.txt /requirement.txt 
RUN pip3 install --use-feature=2020-resolver --ignore-installed --no-cache-dir -r /requirement.txt

##### User changes end  here ##############################s
#Do not change the below line
USER $NB_UID
