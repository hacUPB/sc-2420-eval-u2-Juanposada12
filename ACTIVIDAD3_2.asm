@SCREEN      // Dirección de la pantalla
D=A          // Cargar la dirección de la pantalla en D
@SCREEN
M=D          // Inicializar la pantalla

(LOOP)
@KBD         // Dirección del teclado
D=M          // Leer el estado del teclado
@WAIT
D;JEQ        // Si no hay tecla presionada, esperar

// Tecla presionada, mostrar
@KBD
D=M          // Leer el carácter del teclado
@SCREEN
A=M          // Obtener la dirección de la pantalla
M=D          // Escribir el carácter en la pantalla
@SCREEN
M=M+1        // Mover a la siguiente posición

@LOOP
0;JMP        // Volver al inicio
(END)
@END
0;JMP