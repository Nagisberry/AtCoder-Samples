main = getContents >>= print.sum.map (f.read).tail.words

f :: Int -> Int
f n
  | mod n 6 == 0 = 3
  | mod n 6 == 5 = 2
  | even n     = 1
  | otherwise  = 0
