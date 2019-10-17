-- sumf :: [Double] -> (Double -> Double) -> Double
sumf [] f = 0
sumf (x:xs) f = f(x) + (sumf (xs) f)

main = do
  print(sumf [1,2,3] (\ x -> 2 * x))