package main

import "fmt"

func main() {
    var n, k, q, a int
    fmt.Scan(&n, &k, &q)
    ary := make([]int, n)
    for i := 0; i < q; i++ {
        fmt.Scan(&a)
        ary[a - 1]++
    }
    for i := 0; i < n; i++ {
        if q - ary[i] < k  {
            fmt.Println("Yes")
        } else {
            fmt.Println("No")
        }
    }
}
