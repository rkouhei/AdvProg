bar = \ x -> 3 * x - 1
cube = \ x -> x * x * x 

main = do
  print(bar(3))
  print(cube(3))