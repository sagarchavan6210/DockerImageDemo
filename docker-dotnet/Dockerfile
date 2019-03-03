FROM microsoft/dotnet:2.1-sdk

RUN apt-get update && apt-get install -y --no-install-recommends \
    unzip \
    zip \
    apt-utils \
    lsb-release \
    software-properties-common \
    dirmngr

## installing  azure-cli
ENV AZ_REPO stretch

RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | tee /etc/apt/sources.list.d/azure-cli.list
RUN apt-key --keyring /etc/apt/trusted.gpg.d/Microsoft.gpg adv  --keyserver packages.microsoft.com --recv-keys BC528686B50D79E339D3721CEB3E94ADBE1229CF
RUN apt-get install -y apt-transport-https  && apt-get update -y && apt-get install -y azure-cli && apt-get install -y default-jre



## installing terraform
RUN wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip && \
    mkdir terraform && \
    unzip terraform_0.11.11_linux_amd64.zip -d terraform && \
    cp terraform/terraform  /usr/local/bin/
