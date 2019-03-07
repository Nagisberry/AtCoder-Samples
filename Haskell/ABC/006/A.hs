import Data.Char
 
main = putStrLn.f.map digitToInt =<< getLine
 
f :: [Int] -> String
f x = if elem 3 x || mod (sum x) 3 == 0 then "YES" else "NO"
