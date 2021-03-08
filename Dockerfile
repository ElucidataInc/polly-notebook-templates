########### BASE DOCKER ##########
# This base docker that is required for adding dockers to polly
# DO NOT DELETE or MODIFY the below line
FROM docker.polly.elucidata.io/elucidata/notebook-sos:0.0.5
# DO NOT DELETE or MODIFY the below line
USER root

### Install dependencies

# DO NOT DELETE or MODIFY the below line
USER $NB_UID
