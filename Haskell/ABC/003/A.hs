f :: Int -> Int
f x = div (foldr (+) 0 $ map (* 10000) [1..x]) x

main = print =<< f <$> readLn
