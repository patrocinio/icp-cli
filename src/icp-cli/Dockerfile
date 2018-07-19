FROM ubuntu:latest

# Install kubectl
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y curl gnupg
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN touch /etc/apt/sources.list.d/kubernetes.list
RUN echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y kubectl

# Install bx
RUN curl -L https://clis.ng.bluemix.net/download/bluemix-cli/latest/linux64 > IBM_Cloud_CLI_0.8.0_amd64.tar.gz
RUN tar xzvf IBM_Cloud_CLI_0.8.0_amd64.tar.gz
RUN cd Bluemix_CLI && ./install_bluemix_cli

# Install ICP CLI
COPY icp-cli/plugin/icp-linux-amd64 /
RUN bx plugin install /icp-linux-amd64

# Install helm
RUN curl -L https://storage.googleapis.com/kubernetes-helm/helm-v2.7.2-linux-amd64.tar.gz -o helm-v2.7.2-linux-amd64.tar.gz
RUN tar xzvf helm-v2.7.2-linux-amd64.tar.gz

RUN mv  linux-amd64/helm /usr/local/bin

# Copy helper script
COPY icp-cli/configureHelmCLI.sh /

CMD ["bash"]
