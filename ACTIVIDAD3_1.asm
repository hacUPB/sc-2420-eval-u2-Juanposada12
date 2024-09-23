@256         // Direcci�n de la pantalla
D=A          // Cargar la direcci�n de la pantalla en D
@SCREEN      // Etiqueta para la pantalla
M=D          // Inicializar la pantalla en la direcci�n 256

// Dibujar una l�nea en la mitad de la pantalla
@120         // Asumimos que la pantalla tiene 256 posiciones, comenzamos en la mitad
D=A          // Cargar la posici�n inicial
@LINE        // Etiqueta para la l�nea
M=D          // Almacenar la posici�n de inicio

(LOOP)
@LINE
D=M          // Cargar la posici�n actual de la l�nea
@130         // Dibujar 10 caracteres '-'
D=D+A        // Mover a la siguiente posici�n
@SCREEN
A=D          // Establecer direcci�n en la pantalla
M='-'        // Dibujar el car�cter '-'
@LINE
M=D          // Actualizar la posici�n de la l�nea

@130         // Verificar si hemos dibujado 10 caracteres
D=D-1
@END
D;JEQ        // Si hemos dibujado 10 caracteres, saltar a END

@LOOP
0;JMP        // Volver al inicio

(END)
@END
0;JMP        // Fin del programa