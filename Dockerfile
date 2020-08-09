########### BASE DOCKER ##########
# This base docker that is required for adding dockers to polly
# DO NOT DELETE or MODIFY the below line
FROM docker.polly.elucidata.io/elucidata/polly-glot-notebook:latest

### Install dependencies



# Making sure that the right user is used while running a docker
# DO NOT DELETE or MODIFY the below line
USER $NB_UID