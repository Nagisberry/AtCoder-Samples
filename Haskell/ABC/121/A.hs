main = do
  [h1, w1, h2, w2] <- map (read :: String -> Int).words <$> getContents
  print $ h1 * w1 - (h1 * w2 + w1 * h2 - h2 * w2)
