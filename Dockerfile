# Referencing the Polly provided py3 base image
FROM docker.polly.elucidata.io/elucidata/notebook-python-3_8:0.0.4

USER root

RUN apt-get update -y --no-install-recommends && \
    apt-get install libxpm-dev libjpeg-dev libxrender-dev libgomp1 -y --no-install-recommends

COPY requirement.txt /requirement.txt 
RUN which pip3
# --ignore-installed --no-cache-dir  and used to make sure that 
# colletion and also premission warning respectively are now shown
RUN pip3 install --ignore-installed --no-cache-dir -r /requirement.txt 

# NOTE: NO custom WORKDIR
#       Should end with USER $NB_UID
#        install with user root

USER $NB_UID
