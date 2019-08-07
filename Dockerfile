FROM alpine:3.9
WORKDIR /app
COPY ["../dxtest"," /app/dxtest"]
CMD /app/dxtest/test
