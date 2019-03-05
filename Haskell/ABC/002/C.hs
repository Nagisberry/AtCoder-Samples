main = do
  [xa, ya, xb, yb, xc, yc] <- map (read :: String -> Double) . words <$> getLine
  let [a, b, c, d] = [xb - xa, yb - ya, xc - xa, yc - ya]
  print $ (abs $ (a * d) - (b * c)) / 2
