FROM ubuntu

# Setup workspace
WORKDIR /

# Make sure we have these installed
RUN apt-get update \
 && apt-get install -y \
  libicu66 \
  unzip \
  bash \
  wget 

# Download and install program
RUN wget https://localtonet.com/download/linux-x64.zip
RUN unzip linux-x64.zip
RUN chmod 777 localtonet

# Set entrypoint
ENTRYPOINT [ "./localtonet" ]