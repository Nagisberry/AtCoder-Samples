f n | n < 100    = "00"
f n | n < 1000   = (++) "0" $ show $ div n 100
f n | n <= 5000  = show $ div n 100
f n | n <= 30000 = show $ (+) 50 $ div n 1000
f n | n <= 70000 = show $ (+) 80 $ div ((div n 1000) - 30) 5
f n              = "89"

main = putStrLn =<< f <$> readLn
