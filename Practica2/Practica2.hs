--Practica2

{-Función: sayhello
Descripción: regresa "Hello, "+ una cadena
uso: sayhello "Mundo" = Hello, Mundo!
-}
sayhello :: String -> IO ()
sayhello x = putStrLn("Hello, "++ x ++"!")

{-Función: calcularpropina
Descripción: calcula la propina a partir de una cuen-
ta que por defecto se deja el 10%
uso: calcularpropina 50 = 5 
-}
calcularpropina :: Double -> Double
calcularpropina x = x*0.1

{-Función: menor
Descripción: Recibe 3 números y devuelve el menor de ellos
uso:menor 3 5 9 = 3 
-}
menor :: Int -> Int -> Int-> Int
menor x y z =
 if x<=y && x<=z
 then x
 else if y<=x && y<=z
 then  y
 else z

{-Función: decide
Descripción: Recibe un booleano y dos cadenas. Si el valor booleano es True,
devuelve la primera cadena, de lo contrario devuelve la segunda.
uso: True "hola" "adiós"
     "hola"
     False "hola" "adiós"
     "adiós" 
-}
decide :: Bool-> String -> String -> String
decide x y z =
 if x
 then y
 else z

{-Función: esDescendiente
Descripción: recibe cuatro enteros y regresa un booleano True si fueron acomodados en orden descendiente y False si se regresaron en orden ascedndente
uso: esDescendiente 5 4 2 1
     True
     esDescendiente 1 3 5 8
     False
-}
esDescendiente :: Int -> Int-> Int -> Int -> Bool
esDescendiente w x y z=
 if w>=x && x>=y && y>= z
 then True
 else False


{-Función: esDivisible
Descripción: recibe dos enteros x , y
y devuelve una salida del estilo x es divisible por y.
uso: esDivisble 8 4
     8 es divisible por 4
-}
esDivisible :: Int -> Int -> IO()
esDivisible x y =
 if (x `mod` y == 0)
 then putStrLn (show x ++ " es divisible por " ++ show y)
 else putStrLn (show x ++ " no es divisible por " ++ show  y)


 {-Función: hipotenusa
Descripción:recibe dos parámetros float b y h donde b representa la base y h la altura, devuelve un float
con el valor de la hipotenusa que se calcula respecto a la base y altura del triángulo rectángulo.
uso: hipotenusa 9.0 12.0
     15.0
-}
hipotenusa :: Float -> Float -> Float
hipotenusa b h =
 sqrt (b^2 + h^2)


 {-Función: pendiente
Descripción:Recibe dos parámetros tuplas de dos elementos float respectivamente, (x1, y1) y (x2, y2) y devuelve
un valor float que represente la pendiente de la recta que pasa por dos puntos.
Uso: pendiente ((6.0, 5.0), (4.0, 8.0))
     -1.5
-}
pendiente :: ((Float, Float), (Float, Float)) -> Float
pendiente ((x1, y1), (x2,y2))=
 (y2-y1)/(x2-x1)


 {-Función: distanciaPuntos
Descripción:Recibe dos tuplas de dos elementos float respectivamente,(x1, y1) y (x2, y2) y devuelve un valor
float que represente la distancia entre los puntos (x1, y1) y (x2, y2)
Uso: distanciaPuntos (6.0, 5.0) (4.0, 8.0)
-}
distanciaPuntos :: ((Float, Float), (Float, Float)) -> Float
distanciaPuntos ((x1, y1), (x2, y2)) =
 sqrt(((x2-x1)^2) + ((y2-y1)^2))


 {-Función: cuadrados
Descripción:Recibe una tupla de 5 variables tipo entero y devuelve un tupla de los cuadrados de caeda una.
Uso: cuadrados (6, 2, 7, 3, 5)
     (36, 4, 49, 9, 5)
-}
cuadrados :: (Int, Int, Int, Int, Int) -> (Int, Int, Int, Int, Int)
cuadrados  (a, b, c, d, e)=
 ((a^2), (b^2), (c^2), (d^2), (e^2))