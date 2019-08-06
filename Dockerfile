FROM nginx:1.12.2
WORKDIR /app
COPY ["./test.go"," ."]
EXPOSE 8089
CMD ./build.sh
