main = getLine >>= putStrLn.(\a -> if a == "a" then "-1" else "a")
