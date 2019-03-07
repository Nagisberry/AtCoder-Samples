main = getLine >>= print.(\[s, t] -> t - s + 1).map (read :: String -> Int).words
