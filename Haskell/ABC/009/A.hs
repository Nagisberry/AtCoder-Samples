main = readLn >>= print.(\n -> (+) (fromEnum $ odd n) $ div n 2)
