FROM alpine:3.9
WORKDIR /app
COPY ["./.idea"," ."]
COPY ["./test"," ."]
CMD ./test
