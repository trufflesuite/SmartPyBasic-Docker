FROM alpine:3.7
RUN apk add nodejs bash curl python3
RUN /bin/bash -c "sh <(curl -s https://smartpy.io/dev-20201006-d34afb8381bac41fd57f65f6f19ed50e42dcac4a/cli/SmartPy.sh) local-install-auto ~/smartpy-cli"
RUN /bin/bash -c "chmod +x ~/smartpy-cli/SmartPy.sh"
ENTRYPOINT [ "/root/smartpy-cli/SmartPy.sh" ]
