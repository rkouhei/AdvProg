-- repeatList
repeatList :: [a] -> [a]
repeatList x = x ++ repeatList(x)


main = do
  print(repeatList [2,5])