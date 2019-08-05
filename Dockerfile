FROM nginx:1.12.8
WORKDIR /app
COPY ./dxtest /app/dxtest
EXPOSE 8089
CMD ./app/dxtest/build.sh
