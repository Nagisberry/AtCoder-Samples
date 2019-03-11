import Data.Bits
 
main = do
  [a, b] <- map read.words <$> getLine :: IO [Int]
  print $ f a b
  
f :: Int -> Int -> Int
f a b = xor (f2 $ a - 1) (f2 b)
  
f2 :: Int -> Int
f2 n
  | m == 0 = n
  | m == 1 = 1
  | m == 2 = n + 1
  | m == 3 = 0
