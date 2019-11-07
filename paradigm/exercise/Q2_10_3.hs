-- powerset
powerset [] = [[]]
powerset (x:xs) = [x:ps | ps <- powerset xs] ++ powerset xs

main = do
  print(powerset [1,2,3])