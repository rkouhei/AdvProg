-- pow27
pow27 x = let y = x*x*x in let z = y*y*y in z*z*z

-- myTail
myTail ys = let (x:xs) = ys in xs

main = do
  -- Q2.10.1.1
  print(pow27(2))

  -- Q2.10.1.2
  print(myTail ["a","b","c","d"])