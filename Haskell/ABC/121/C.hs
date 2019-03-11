import Control.Monad
import Data.List
 
main = do
  [n, m] <- map read.words <$> getLine :: IO [Int]
  abl <- sortBy (\[a1, _] [a2, _] -> compare a1 a2) <$> (replicateM n $ map read.words <$> getLine :: IO [[Int]])
  print $ f abl m
 
f :: [[Int]] -> Int -> Int
f ([a, b]:abl) m
  | m == 0 = 0
  | b >= m = (*) m a
  | otherwise = (b * a) + (f abl (m - b))
