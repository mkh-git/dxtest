FROM nginx:1.12.8
WORKDIR /app
COPY ["./test.go"," ."]
EXPOSE 8089
CMD ./build.sh
