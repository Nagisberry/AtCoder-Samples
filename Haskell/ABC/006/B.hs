main = print.f =<< readLn

f :: Int -> Int
f n
  | n == 1    = 0
  | n == 2    = 0
  | otherwise = f2 n 0 0 1
  
f2 :: Int -> Int -> Int -> Int -> Int
f2 n t1 t2 t3
  | n == 3    = t3
  | otherwise = f2 (n - 1) t2 t3 (mod (t1 + t2 + t3) 10007)
