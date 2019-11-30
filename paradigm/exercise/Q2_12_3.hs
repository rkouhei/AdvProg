chokkaku :: Integer -> [(Integer,Integer,Integer)]
chokkaku n = [(x,y,z) | x <- [1..n], y <- [x+1..n], z <- [y+1..n], x^2 + y^2 == z^2]

main = do
  -- [(3,4,5),(5,12,13),(6,8,10),(7,24,25),(8,15,17),(9,12,15),(10,24,26),(12,16,20),(15,20,25),(18,24,30),(20,21,29)]
  print(chokkaku 30)