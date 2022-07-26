package main

import (
	"fmt"
	"net/http"
)

func hola(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "toni goes hola")
}

func main() {
	http.HandleFunc("/hola", hola)
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		fmt.Printf("error: %v", err)
	}
	fmt.Println("Listening PORT with 8080")

}
