FROM alpine:3.7
RUN apk add nodejs bash curl python3
RUN /bin/bash -c "sh <(curl -s https://smartpy.io/cli/install.sh) local-install ~/smartpy-cli"
RUN /bin/bash -c "chmod +x ~/smartpy-cli/SmartPy.sh"
ENTRYPOINT [ "/root/smartpy-cli/SmartPy.sh" ]
