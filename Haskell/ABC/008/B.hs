main = getContents >>= putStrLn.snd.maximum.(\l -> [(length [y | y <- l, x == y], x) | x <- l]).tail.lines
