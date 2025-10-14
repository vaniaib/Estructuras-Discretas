module Aux where
data Arbol a = Vacio | AB a (Arbol a) (Arbol a) deriving (Eq, Ord, Show)
--Funciones auxiliares

--Auxiliar para mínimo, devuelve el elemento menor
minimoAux :: (Ord a) => a -> a -> a
minimoAux t1 t2 = if t1 <= t2 then t1 else t2

--Auxiliar para recorrido, concatena dos listas
recorridoAux :: [a] -> [a] -> [a]
recorridoAux [] ys = ys
recorridoAux (x:xs) ys = x:(recorridoAux xs ys)

--Auxiliar para esBalanceado, regresa la altura
altura :: Arbol a -> Int
altura Vacio = 0
altura (AB n Vacio Vacio) = 1
altura (AB n t1 t2) = if altura t1 > altura t2 then 1 + altura t1 else 1 + altura t2

{-Auxiliares para listArbol, recibe una lista y un elemento y regresa los elementos mayores o menores al elemento.
-}
menores :: (Ord a) => a -> [a] -> [a]
menores n [] = [] 
menores n (x:xs) = if x<= n then x:(menores n xs) else menores n xs


mayores :: (Ord a) => a -> [a] -> [a]
mayores n [] = [] 
mayores n (x:xs) = if x>n then x:(mayores n xs) else mayores n xs