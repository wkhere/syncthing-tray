FROM vcatechnology/linux-mint:18.0
WORKDIR /root

RUN apt-get install -y curl build-essential make git-core

RUN curl -O https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
RUN tar xf go1.8.3.linux-amd64.tar.gz -C/usr/local
ENV PATH=/usr/local/go/bin:$PATH

RUN apt-get install -y libgtk-3-dev libappindicator3-dev

RUN go get github.com/alex2108/systray
RUN go get github.com/toqueteos/webbrowser