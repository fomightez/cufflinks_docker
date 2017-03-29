# Dockerfile to build Cufflinks container images
# Based on Ubuntu
FROM ubuntu:14.04
LABEL maintainer "Wayne Decatur *(fomightez on Github)*"

# Install container-wide requrements unzip, wget, screen #
RUN apt-get update && apt-get install -y libreadline-dev \
   wget \
   curl \
   unzip \
   screen \
   software-properties-common \
 && rm -rf /var/lib/apt/lists/* && \
 apt-get clean



# Install latest Cufflinks 
################################################################################
# Specifically Cufflinks 2.2.1. That is specifically most
# recent, dated May 05, 2014 (three years ago now that 2017) at
# http://cole-trapnell-lab.github.io/cufflinks/install/ .
################################################################################
# Set working directory in /usr/local/
WORKDIR /usr/local/
# Get via http and install 
RUN wget http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz && \
    tar -zxvf cufflinks-2.2.1.Linux_x86_64.tar.gz && \
    rm -rf cufflinks-2.2.1.Linux_x86_64.tar.gz
# Change in PATH 
ENV PATH /usr/local/cufflinks-2.2.1.Linux_x86_64:$PATH

# Making so screen program starts up with Bash shell so that tab-completion and other features work
ENV HOME /root
WORKDIR $HOME
RUN cp /etc/screenrc . && \
    mv screenrc .screenrc && \
    echo -e "# ~/.screenrc\ndefshell -bash      # dash makes it a login shell\n" >> .screenrc


# Default command
WORKDIR /data
CMD ["bash"]
