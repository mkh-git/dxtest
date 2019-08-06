FROM nginx:1.12.2
WORKDIR /dxtest
COPY ["./test.go"," ."]
COPY ["./build.sh"," ."]
EXPOSE 8089
CMD ./build.sh
