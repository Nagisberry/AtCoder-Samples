f1 :: String -> String -> Bool
f1 (s:sx) (t:tx)
  | sx == []  = f2 s t
  | otherwise = (f2 s t) && (f1 sx tx)

f2 :: Char -> Char -> Bool  
f2 cs ct
  | cs == '@' = ct == '@' || ct == 'a' || ct == 't' || ct == 'c' || ct == 'o' || ct == 'd' || ct == 'e' || ct == 'r'
  | ct == '@' = cs == 'a' || cs == 't' || cs == 'c' || cs == 'o' || cs == 'd' || cs == 'e' || cs == 'r'
  | otherwise = cs == ct
  
f3 :: Bool -> String
f3 b = if b then "You can win" else "You will lose"

main = putStrLn =<< f3 <$> (f1 <$> getLine <*> getLine)
