FROM alpine:3.7
WORKDIR ~/
RUN apk add nodejs bash curl python3
RUN /bin/bash -c "sh <(curl -s https://SmartPy.io/SmartPyBasic/SmartPy.sh) local-install ~"
RUN /bin/bash -c "chmod +x ~/SmartPyBasic/SmartPy.sh"
ENTRYPOINT [ "/root/SmartPyBasic/SmartPy.sh" ]
