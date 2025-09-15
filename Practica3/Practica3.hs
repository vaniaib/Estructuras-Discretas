--Practica 3


{-Función: creditos
Descripción: Toma un entero y regresa la materia que tiene esos respectivos créditos
uso: creditos 4
     ["Inglés"]
-}
creditos :: Int -> [String]
creditos x = 
 if x == 12 then ["Introduccion a ciencias de la computacion" , " Matematicas para las ciencias aplicadas I"]
else if x == 10 then ["Estructuras Discretas" , "Algebra superior I"]
else if x == 4 then ["Ingles"]
else ["No existe"]




{-Función: negativos
Descripción: Cuenta los numeros negativos de una lista
uso: 
negativos [-1 , 2 , 4 , 6 , -4]
          2
-}
negativos :: [Int] -> Int
negativos x = sum[if x <  0 then 1 else 0 | x <- x]



{-Función: primos
Descripción: Devuelve los primos de la lista
uso: primos [1..20]
     [2 , 3 , 5 , 7 , 11 , 13 , 17 , 19] 

-}
primos :: [Int] -> [Int]
primos xs = [x | x  <- xs , x > 1 , length [p | p <- [2..x-1], x `mod` p == 0 ] == 0]




{-Función: conjuntoLista
Descripción: Recibe una lista de cualquier tipo y devuelve una lista sin elementos repetidos a partir de la lista original.
uso: conjuntoLista [1 , 2 , 2 , 1 , 3]
     [1, 2 , 3] 
-}

conjuntoLista [] = []
conjuntoLista (x:xs) = x : conjuntoLista [c | c  <- xs , c /= x]

