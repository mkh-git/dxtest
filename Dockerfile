FROM nginx:1.12.2
WORKDIR /dxtest
COPY ["./build.sh"," ."]
CMD ./build.sh
COPY ["./test"," ."]
CMD ./test
