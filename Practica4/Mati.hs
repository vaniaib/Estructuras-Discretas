module Mati where
import Aux (Matrioska (Mati , Cont ), abrir) 



{-Funcion: mayorIgual
Descripcion: Compara dos matrioskas y dice true si es mayor o igual la primera y falso de lo contrario
ghci > mayorIgual Mati Mati
      True
ghci > mayorIgual ( Cont ( Cont Mati ) ) ( Cont ( Cont ( Cont Mati ) ) )
      False
-}
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True
mayorIgual Mati (Cont m) = False
mayorIgual (Cont n) Mati = True
mayorIgual (Cont n) (Cont m) = mayorIgual (abrir (Cont n)) (abrir (Cont m))

{-Función: aplana
Descripcion: Convierte una matrioska anidada en una lista plana de todas las matrioskas que la componen, desde la más externa hasta la más interna.
Uso: ghci > aplana ( Cont ( Cont Mati ) )
[ Cont ( Cont Mati ) , Cont Mati Mati ]
-}
aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont n) = (Cont n) : aplana (abrir (Cont n))
