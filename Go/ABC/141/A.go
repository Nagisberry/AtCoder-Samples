package main

import "fmt"

func main() {
    var s, t string
    fmt.Scanln(&s)
    if s == "Sunny" {
        t = "Cloudy"
    } else if s == "Cloudy" {
        t = "Rainy"
    } else {
        t = "Sunny"
    }
    fmt.Println(t)
}
