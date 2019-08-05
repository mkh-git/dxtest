package main

import (
	"fmt"
	"log"
	"net/http"
	"strings"
)
func sayhello(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()
	fmt.Println("scheme: ", r.URL.Scheme)
	fmt.Println("URI: ", r.RequestURI)
	fmt.Println("Host: ", r.Host)
	fmt.Println(r.Form)
	fmt.Println("path: ", r.URL.Path)
	fmt.Println("proto: ", r.Proto)
	fmt.Println(r.Form["url_long"])
	for k, v := range r.Form {
		fmt.Println("key:", k)
		fmt.Println("value:", strings.Join(v, ""))
	}
	for k, v := range r.Header {
		fmt.Println("key:", k)
		fmt.Println("value:", strings.Join(v, ""))
	}
	fmt.Println("Hello Interns")

	w.WriteHeader(http.StatusBadRequest)
	_, err := fmt.Fprintf(w, "Hello interns!")
	if err != nil {
		fmt.Println("write error: ", err)
	}
}

func main() {
	port := 8085
	http.HandleFunc("/", sayhello)
	fmt.Printf("listening in %d", port)
	err := http.ListenAndServe(fmt.Sprintf(":%d", port), nil)
	if err != nil {
		log.Fatal("ListenAndServe error: ", err)

	}
}

