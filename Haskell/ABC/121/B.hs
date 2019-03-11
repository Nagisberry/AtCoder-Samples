import Control.Monad
 
main = do
  [n, m, c] <- map read.words <$> getLine :: IO [Int]
  b <- map read.words <$> getLine :: IO [Int]
  al <- replicateM n (map read.words <$> getLine :: IO [Int])
  print $ f al b c
  
f :: [[Int]] -> [Int] -> Int -> Int
f al b c
  | al == []  = 0
  | otherwise = (if sum (map (\(ai, bi) -> ai * bi) (zip (head al) b)) + c > 0 then 1 else 0) + f (tail al) b c
