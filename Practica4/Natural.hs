module Natural where
import Aux (Natural (Cero , S ), suma_natural , mult_natural)


{-Función: a_natural
Descripción: toma un entero (0,1,...) y lo lleva a su estructura de dato Natural
Uso: ghci > a_natural 0
ghci > Cero
-}
a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n-1))


{-Función: a_entero
Descripción: Lleva un dato Natural a su valor entero
Uso: ghci > a_entero Cero
0
-}
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + (a_entero (n))

{-Función: potenciaNat
Descripción: Eleva un número natural a la potencia del segundo
Uso: ghci > potencia ( S ( S ( S Cero ) ) ) ( S ( S Cero ) )
           S ( S ( S ( S ( S ( S ( S ( S ( S Cero ) ) ) ) ) ) ) )
-}
potenciaNat :: Natural -> Natural -> Natural
potenciaNat n Cero = (S (Cero))
potenciaNat Cero m = Cero
potenciaNat n (S m) = mult_natural n (potenciaNat n m)

{-Función: facNat
Descripción: Devuelve el factorial de un natural dado.
Uso: ghci > facNat ( S ( S ( S Cero ) ) ) 
          ( S ( S ( S ( S ( S ( S Cero ) ) ) ) ) ) 
-}
facNat :: Natural -> Natural
facNat Cero = (S Cero)
facNat (S n) = mult_natural (S n) (facNat n)
