FROM alpine:3.9
WORKDIR /app
COPY ["../dxtest"," ."]
CMD /app/dxtest/test
