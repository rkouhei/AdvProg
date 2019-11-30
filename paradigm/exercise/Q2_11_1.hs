-- myDrop
-- myDrop :: Integer -> [a] -> [a]
myDrop num x = take (length(x) - num) x

main = do
  let var = [1,2,3,4,5,6,7]
  print(myDrop 2 var)