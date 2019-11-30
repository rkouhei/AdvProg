data MyList a = MyNil | MyCons a (MyList a)

instance Eq a => Eq(MyList a) where
  MyNil == MyNil = True
  MyCons b1 c1 == MyCons b2 c2 = b1 == b2 && c1 == c2
  _ == _ = False

instance Ord a => Ord(MyList a) where
  MyNil <= MyCons b c = True
  MyCons b1 c1 <= MyCons b2 c2 = if b1 == b2 then c1 <= c2 else b1 < b2
  _ <= _ = False

toMyList :: [a] -> MyList a
toMyList [] = MyNil
toMyList (x:xs) = MyCons x (toMyList xs)

main = do
  print(toMyList "abc" <= toMyList "abd")
  print(toMyList "ab" <= toMyList "abc")
  print(toMyList "ab" <= toMyList "a")
  print(toMyList "ab" <= toMyList "ba")