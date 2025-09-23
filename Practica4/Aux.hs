module Aux (Matrioska (Mati , Cont), abrir, Natural (Cero , S ), suma_natural , mult_natural) where
--Funciones auxiliares para Mati:

data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{-Funcion : abrir
Abre la Matrioska para sacar la de adentro
-}
abrir :: Matrioska -> Matrioska
abrir Mati = Mati
abrir (Cont a) = a

--Funciones auxiliares para Natural :

data Natural = Cero | S Natural deriving (Eq, Show)

{-
función: suma_natural
descripcion : suma dos Naturales
-}
suma_natural :: Natural -> Natural -> Natural
suma_natural Cero  n = n
suma_natural (S m) n = suma_natural m (S n)

{-
función: mult_natural
descripcion :multiplica dos Naturales
-}

mult_natural :: Natural -> Natural -> Natural
mult_natural  Cero n = Cero
mult_natural  (S m) n = suma_natural n (mult_natural m n)