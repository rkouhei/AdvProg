-- fromBin :: [Bool] -> Integer
fromBin [] = 0
fromBin (x:xs) = if x then henkan(x) ^ length(xs) + fromBin(xs) else 0 + fromBin(xs)

henkan :: Bool -> Integer
henkan x = if x then 2 else 0

fromBinRev [] = 0
fromBinRev (x:xs) = henkan_2(x) + 2 * (fromBinRev(xs))

henkan_2 :: Bool -> Integer
henkan_2 x = if x then 1 else 0

-- evalPoly :: [Double] -> Double -> Double
evalPoly [] y = 0
evalPoly (x:xs) y = x + (evalPoly (map (*y) xs) y)

main = do
  -- Q2.5.2.1
  let var = [True,False,False]
  print(fromBin(var))

  -- Q2.5.2.2
  print(fromBinRev(var))

  -- Q2.5.2.3
  print(evalPoly [1,2,3,4] 10)