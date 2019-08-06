FROM nginx:1.12.2
WORKDIR /app
COPY ["./test.go"," ."]
COPY ["./build.sh"," ."]
EXPOSE 8089
CMD ./build.sh
