div2 n m
  | l >= hm   = dn + 1
  | otherwise = dn
  where
    dn = div n m
    hm = div m 2
    l  = mod n m

f1 n
  | n <=  112 = "N"
  | n <=  337 = "NNE"
  | n <=  562 = "NE"
  | n <=  787 = "ENE"
  | n <= 1012 = "E"
  | n <= 1237 = "ESE"
  | n <= 1462 = "SE"
  | n <= 1687 = "SSE"
  | n <= 1912 = "S"
  | n <= 2137 = "SSW"
  | n <= 2362 = "SW"
  | n <= 2587 = "WSW"
  | n <= 2812 = "W"
  | n <= 3037 = "WNW"
  | n <= 3262 = "NW"
  | n <= 3487 = "NNW"
  | otherwise = "N"

f2 n
  | m <=   2  =  0
  | m <=  15  =  1
  | m <=  33  =  2
  | m <=  54  =  3
  | m <=  79  =  4
  | m <= 107  =  5
  | m <= 138  =  6
  | m <= 171  =  7
  | m <= 207  =  8
  | m <= 244  =  9
  | m <= 284  = 10
  | m <= 326  = 11
  | otherwise = 12
  where
    m = div2 n 6

main = do
  [deg, dis] <- map read . words <$> getLine
  let w = f2 dis
  let dir = if w == 0 then "C" else f1 deg
  putStrLn $ unwords $ [dir, show w]
