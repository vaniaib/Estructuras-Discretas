Ibañez Bustamante Vania Elisa
Practica 4
Recursión First Steps
La canción empieza con el pollito pio, que podría ser el caso base, ya que es con el que comienza y el que se repite durante toda la canción, luego al pollito pio se le va agregando un animal nuevo al final, para luego volver al animal anterior y eventalmente regresar al pollito pio siempre, como una función recursiva.

Objetivo de la práctica: Usar los tipos de datos para elaborar distintas funciones recursivas.

1.a_natural: Para esta función primero me di cuenta de que tenía que tomar un tipo de dato entero para volverlos uno natural, luego hice el caso base con el valor mínimo que es cero y despues la funcion recursiva, que agrega S a cada valor del entero que va decreciendo hasta llegar a 0.

2. a_entero: es un poco similar a a_entero en su caso base ,pero en el caso recursivo va sumando 1 por cada sucesor hasta llegar al caso base (por eso resta 1 an cada vez) que es Cero.

3.potenciaNat : En los casos base use los valores más pequeños que se pueden obtener con Cero ya sea como exponente o como base, para el caso recursivo use el auxiliar mult natural para multiplicar n veces la potencia de n m, m es el exponente que decrece para llegar al caso base

4.facNat : El caso base es el factorial del valor minimo que es Cero y el caso recursivo usa la función multiplica para multiplicar (S n) por las veces que se ejecute facNat reduciendo n hasta llegar a Cero.

5.mayorIgual : Los casos base usan todos a Mati para decidir si una Matrioska es mayor y el caso recursivo abre ambas Matrioskas hasta que una o las dos lleguen a Mati y aplicar los casos base

6. aplana : el caso base es regresar el valor mínimo en forma de lista y el recursivo concatena la Matrioska hasta llegar a Mati con la funcíon abrir.


Tiempo requerido: aproximadamente 3 horas
Comentarios extra :Solo se me hizo un poco complicado el importar las funciones auxiliares.
