isNotVowel c
  | c == 'a' || c == 'i' || c =='u' || c == 'e' || c == 'o' = False
  | otherwise                                               = True

main = putStrLn =<< filter isNotVowel <$> getLine
