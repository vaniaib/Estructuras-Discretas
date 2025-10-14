module Practica6 where
import Aux 

{-Función: nVacios
Descripcion: Devuelve el total de nodos vacios en un arbol.
Uso: ghci > nVacios (( AB 4 ( Vacio ) ( AB 3 Vacio Vacio ) ) )
 3
-}
nVacios :: Arbol a -> Int
nVacios Vacio = 1
nVacios (AB r t1 t2) = nVacios t1 +  nVacios t2

{-Función: refleja
Descripción: Hace que todos los subarboles izquierdos se vuelvan subarboles derechos y viceversa.
Uso: ghci > refleja ( AB 4 Vacio ( AB 3 Vacio ( AB 5 Vacio Vacio ) ) )
 AB 4 ( AB 3 ( AB 5 Vacio Vacio ) Vacio ) Vacio
-}

refleja :: Arbol a -> Arbol a
refleja Vacio = Vacio
refleja (AB r t1 t2) = (AB r (refleja t2) (refleja t1))

{-Función: minimo
Descripcion:Devuelve el elemento minimo
Uso : ghci > minimo ( AB 9.0 ( AB 4.0 Vacio ( AB 5.0 Vacio ( AB 6.1 Vacio Vacio )) ) Vacio )
4.0
-}

minimo :: (Ord a) => Arbol a -> a
minimo Vacio = error  "no hay elemento minimo en vacio"
minimo (AB n Vacio Vacio) = n
minimo (AB n t1 Vacio) = minimoAux n (minimo t1)
minimo (AB n Vacio t2) = minimoAux n (minimo t2)
minimo (AB r t1 t2) = minimoAux r (minimoAux (minimo t1) (minimo t2))


{-Función: recorrido
Descripcion:Devuelve una lista con los elementos de un arbol de acuerdo al recorrido Inorden
ghci > recorrido ( AB 4 Vacio ( AB 3 Vacio ( AB 5 Vacio Vacio ) ) )
ghci > [4 ,3 ,5]

-}
recorrido :: Arbol a -> [a]
recorrido Vacio = []
recorrido (AB n Vacio Vacio) = [n]
recorrido (AB n izq der) =(recorridoAux [n] (recorridoAux (recorrido izq) (recorrido der)))


{-Función: esBalanceado
Descripcion: Verifica si un árbol está balanceado, si lo esta regresa True de lo contrario False.
Uso: ghci > esBalanceado ( AB 1 ( AB 2 Vacio Vacio ) ( AB 3 Vacio Vacio ) )
 True
-}

esBalanceado :: Arbol a -> Bool
esBalanceado Vacio = True
esBalanceado (AB n t1 t2) = if (altura t1 - altura t2) > 1 || (altura t2 - altura t1) > 1 then False else esBalanceado t1 && esBalanceado t2




 {-Función listaArbol.
 Descripcion: Recibe una lista de elementos cualesquiera y regresa un árbol binario de busqueda.
Uso: ghci > listaArbol [5 ,3 ,7 ,1 ,9]
AB 5 ( AB 3 ( AB 1 Vacio Vacio ) Vacio ) ( AB 7 Vacio ( AB 9 Vacio Vacio ) )

-}
listaArbol :: (Ord a) => [a] -> Arbol a
listaArbol [] = Vacio 
listaArbol (x:xs) = (AB x (listaArbol (menores x xs)) (listaArbol (mayores x xs)) )
