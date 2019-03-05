main = print =<< maximum . map (read :: String -> Int) . words <$> getLine
