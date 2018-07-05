FROM ubuntu:latest

RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y curl gnupg
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

CMD ["bash"]
