-- countEq
countEq x y = sum(zipWith equal x y)

equal a b = if a == b then 1 else 0

main = do
  let var1 = [1,2,3,5]
  let var2 = [2,2,6,5,3]
  print(countEq var1 var2)
