main = do
  let n = 1:2:3:[]
  print n
  let n = (1:2:[]):(3:4:[]):[]
  print n