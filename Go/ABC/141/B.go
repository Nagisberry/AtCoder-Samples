package main

import "fmt"

func main() {
    var s string
    fmt.Scanln(&s)
    for i, c := range s {
        if (i % 2 == 0 && c == 'L') || (i % 2 == 1 && c == 'R') {
            fmt.Println("No")
            return
        }
    }
    fmt.Println("Yes")
}
