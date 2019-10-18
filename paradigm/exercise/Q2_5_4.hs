-- deleteOne :: [Integer] -> Integer -> [Integer]
deleteOne [] y = []
deleteOne (x:xs) y = if x == y then xs else [] ++ [x] ++ (deleteOne (xs) y)

deleteAll [] y = []
deleteAll (x:xs) y = if x == y then deleteAll (xs) y else [] ++ [x] ++ (deleteAll (xs) y)

main = do
  -- Q2.5.4.1
  let xs = [1,2,3,4,3]
  let x = 3
  print(deleteOne xs x)

  -- Q2.5.4.2
  print(deleteAll xs x)
