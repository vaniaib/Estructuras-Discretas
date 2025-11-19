import Aux

{-Función: frecuencia
Descripción: Recibe un String y regresa una tupla de la frecuencia de cada uno de sus caracteres.
Uso:frecuencia "ola cara de bola"
[('a',4),(' ',3),('l',2),('o',2),('b',1),('e',1),('d',1),('r',1),('c',1)]
-}

frecuencia:: String -> [(Char, Int)]
frecuencia "" = []
frecuencia (x:xs) = quicksort (frecuenciaux (x:xs))

{-Función: arbol
Descripción: Recibe un string y regresa el arbol de Huffman correspondiente
Uso: arbol "ola cara de bola"
Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo Vacio (Hoja 'c')) (Hoja 'r')) (Hoja 'd')) (Hoja 'e')) (Hoja 'b')) (Hoja 'o')) (Hoja 'l')) (Hoja ' ')) (Hoja 'a')
-}

arbol :: String -> HuffmanTree
arbol "" = Vacio
arbol (x:xs) = arbolaux (frecuencia (x:xs))

{- Función : comprime
Descripción : recibe un String y regresa una tupla con su arbol de Huffman y su versión comprimida.
Uso: comprime "ola cara de bola"
[(Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo Vacio (Hoja 'c')) (Hoja 'r')) (Hoja 'd')) (Hoja 'e')) (Hoja 'b')) (Hoja 'o')) (Hoja 'l')) (Hoja ' ')) (Hoja 'a'),"00010011010000000011000000011010000001000001010000100010011")]
-}

comprime :: String -> [(HuffmanTree, String)]
comprime "" = [(Vacio, "")]
comprime (x:xs) = [(arbol (x:xs) ,  codifica (x:xs) (arbol (x:xs)))]

{-Función: descomprime
Descripción: recibe un árbol y un String y regresa la String correspondiente
Uso: ghci> descomprime (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo Vacio (Hoja 'k')) (Hoja 'r')) (Hoja 'd')) (Hoja 'e')) (Hoja 'm')) (Hoja 'a')) "0000011000010110001101001"
"karmadame"

-}
descomprime :: HuffmanTree -> String -> String
descomprime Vacio _ = error "debes poner un arbol"
descomprime (Nodo ai ad) (x:xs) =descomprimeaux (separada (x:xs) [] []) (Nodo ai ad)
