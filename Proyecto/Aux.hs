module Aux where

data HuffmanTree = Vacio | Hoja Char | Nodo HuffmanTree HuffmanTree deriving (Show)

--Función para calcular la frecuencia (frecuencia)
cuenta :: Char -> String -> Int
cuenta c "" = 0
cuenta a (x:xs) = if (a==x) then 1 + cuenta a xs else cuenta a xs

--Función para regresar una tupla, usando cuenta (frecuencia)
frecuenciaux :: String -> [(Char, Int)]
frecuenciaux "" = []
frecuenciaux (x:xs) = (x, cuenta x (x:xs)) :(frecuenciaux [y | y <- xs, y /= x])

--Función que ordena(quicksort) (frecuencia)
quicksort :: (Ord b) => [(a,b)] -> [(a,b)]
quicksort [] = []
quicksort ((a,b):xs) =
  quicksort [x | x <- xs, snd x >= b]
  ++ [(a,b)] ++
  quicksort [x | x <- xs, snd x < b]
  
--Función auxiliar para el arbol (arbol)
arbolaux :: [(Char, Int)] -> HuffmanTree
arbolaux [] = Vacio
arbolaux [(c, n)] = Nodo Vacio (Hoja c)
arbolaux ((c, n) :xs) = Nodo (arbolaux xs) (Hoja c)

--Función auxiliar para codificar (comprime)
codifica ::  String -> HuffmanTree -> String
codifica "" _ = ""
codifica [x] (Nodo ai ad) = if (x == nodo ad) then "1" else "0" ++ (codifica [x] ai)
codifica (x:xs) (Nodo ai ad) = (codifica [x] (Nodo ai ad)) ++ (codifica xs (Nodo ai ad))

--Función para sacar el char de un nodo del arbol
nodo :: HuffmanTree -> Char
nodo (Hoja c) = c

--Función que recibe un String y un árbol y regresa la letra (descomprime)
letra :: String -> HuffmanTree -> String
letra "" _ = []
letra (x:xs) (Nodo ai ad) = if (x == '1') then [nodo ad]
else (letra xs ai)

--Función que regresa la palabra (descomprime)
descomprimeaux :: [String] -> HuffmanTree -> String
descomprimeaux [] _ = ""
descomprimeaux (x:xs) (Nodo ai ad) = (letra x (Nodo ai ad)) ++ (descomprimeaux (xs) (Nodo ai ad))

--Funcíon que separa la codificación para buscar en el arbol(descomprime)
separada :: String -> String -> [String] -> [String]
separada [] acc acl = acl
separada (x:xs) acc acl = if (x == '0')
then separada xs (acc++[x]) acl
 else separada xs "" (acl++[(acc++[x])]) 

