mySum :: [Integer] -> Integer
mySum [] = 0
mySum (x:xs) = x + mySum(xs)

myProd :: [Integer] -> Integer
myProd [] = 1
myProd (x:xs) = x * myProd(xs)

main = do
  let var = [1,2,3,4]
  print(mySum(var))
  print(myProd(var))