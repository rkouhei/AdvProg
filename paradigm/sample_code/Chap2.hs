module Chap2 where

fact :: Integer -> Integer
fact n = if n == 0 then 1 else n * fact (n - 1)

myLength :: [a] -> Integer
myLength []     = 0
myLength (x:xs) = 1 + myLength xs

{- Preludeに定義済み
(++)           :: [a] -> [a] -> [a]
[] ++ ys      = ys
(x:xs) ++ ys  = x : (xs ++ ys)

reverse   :: [a] -> [a]
reverse [] = []
reverse (x:xs) = (reverse xs) ++ [x]
 -}

-- shunt は revの補助関数
shunt          :: [a] -> [a] -> [a]
shunt ys []     = ys
shunt ys (x:xs) = shunt (x:ys) xs

rev   :: [a] -> [a]
rev xs = shunt [] xs

{- Preludeに定義済み
zip :: [a] -> [b] -> [(a,b)]
zip (a:as) (b:bs) = (a,b) : zip as bs
zip _       _     = []
 -}

pow4 x = let { y = x * x } in y * y
{- Preludeに定義済み
head ys = let { (x:xs) = ys } in x

repeat  :: a -> [a]
repeat x = let { xs = x:xs } in xs
-}

data Direction = Up | Down | Left | Right

data Tree a = Branch (Tree a) a (Tree a) | Empty

from :: Integer -> [Integer]
from n = n : from (n + 1)

{- Preludeに定義済み
take :: Integer -> [a] -> [a]
take 0 _      = []
take _ []     = []
take n (x:xs) = x : take (n - 1) xs

-- primes （問 3.9.3）に使用するかも

filter p []     = []
filter p (x:xs) = if p x then x : filter p xs else filter p xs

map f []     = []
map f (x:xs) = f x : map f xs

iterate f a = a : iterate f (f a)
-}

unit :: a -> [a]
unit a = [a]

bind :: [a] -> (a -> [b]) -> [b]
bind []     _ = []
bind (x:xs) f = (f x) ++ (bind xs f)

qsort []     = []
qsort (x:xs) = qsort [ y | y <- xs, y < x] ++ x : qsort [ y | y <- xs, y >= x]

safe p n  = all not [ check (i, j) (1 + length p, n) | (i, j) <- zip [1..] p ]
check (i,j) (m,n) = j == n || (i + j == m + n) || (i - j == m - n)

{- Preludeに定義済み
all               :: (a -> Bool) -> [a] -> Bool
all p []           = True
all p (x:xs)       = if p x then all p xs else False
-}

queens 0  = [[]]
queens m  = [ p ++ [n] | p <- queens (m - 1), n <- [1..8], safe p n ]
