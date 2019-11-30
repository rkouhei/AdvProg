data Tree a = Empty | Branch (Tree a) a (Tree a) deriving (Eq,Ord,Show)

tree4 :: Tree Integer
tree4 = Branch (Branch Empty 1 Empty) 2 (Branch Empty 3 (Branch Empty 4 Empty))

tree3 :: Tree Integer
tree3 = Branch (Branch Empty 1 Empty) 2 (Branch Empty 3 Empty)

preorder  :: Tree a -> [a]
preorder Empty = []
preorder (Branch l a r) = [a] ++ preorder(l) ++ preorder(r)

inorder   :: Tree a -> [a]
inorder Empty = []
inorder (Branch l a r) = inorder(l) ++ [a] ++ inorder(r)

postorder :: Tree a -> [a]
postorder Empty = []
postorder (Branch l a r) = postorder(l) ++ postorder(r) ++ [a]


main = do
  print(preorder tree4)
  print(inorder tree4)
  print(postorder tree4)

  print(preorder tree3)
  print(inorder tree3)
  print(postorder tree3)