import Data.List
 
main = getContents >>= print.head.tail.sortBy (flip compare).nub.map (read :: String -> Int).tail.lines
