@SCREEN      // Direcci�n de la pantalla
D=A          // Cargar la direcci�n de la pantalla en D
@SCREEN
M=D          // Inicializar la pantalla

(LOOP)
@KBD         // Direcci�n del teclado
D=M          // Leer el estado del teclado
@WAIT
D;JEQ        // Si no hay tecla presionada, esperar

// Tecla presionada, mostrar
@KBD
D=M          // Leer el car�cter del teclado
@SCREEN
A=M          // Obtener la direcci�n de la pantalla
M=D          // Escribir el car�cter en la pantalla
@SCREEN
M=M+1        // Mover a la siguiente posici�n

@LOOP
0;JMP        // Volver al inicio
(END)
@END
0;JMP