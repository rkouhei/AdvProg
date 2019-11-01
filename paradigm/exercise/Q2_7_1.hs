-- countEq
countEq x y = sum(zipWith equal x y)
equal a b = if a == b then 1 else 0

-- addSemicolon
addSemicolon [] = []
addSemicolon (x:xs) = x ++ ";" ++ addSemicolon(xs)

main = do
  -- Q2.7.1.1
  let var1 = [1,2,3,5]
  let var2 = [2,2,6,5,3]
  print(countEq var1 var2)

  -- Q2.7.1.2
  let var3 = ["abc","xyz","123"]
  print(addSemicolon var3)