main = print.f =<< getInts
  
f :: [Int] -> Int
f (x:y:_) = div y x
  
getInts :: IO [Int]
getInts = map read.words <$> getLine
