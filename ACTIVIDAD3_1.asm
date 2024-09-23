@256         // Dirección de la pantalla
D=A          // Cargar la dirección de la pantalla en D
@SCREEN      // Etiqueta para la pantalla
M=D          // Inicializar la pantalla en la dirección 256

// Dibujar una línea en la mitad de la pantalla
@120         // Asumimos que la pantalla tiene 256 posiciones, comenzamos en la mitad
D=A          // Cargar la posición inicial
@LINE        // Etiqueta para la línea
M=D          // Almacenar la posición de inicio

(LOOP)
@LINE
D=M          // Cargar la posición actual de la línea
@130         // Dibujar 10 caracteres '-'
D=D+A        // Mover a la siguiente posición
@SCREEN
A=D          // Establecer dirección en la pantalla
M='-'        // Dibujar el carácter '-'
@LINE
M=D          // Actualizar la posición de la línea

@130         // Verificar si hemos dibujado 10 caracteres
D=D-1
@END
D;JEQ        // Si hemos dibujado 10 caracteres, saltar a END

@LOOP
0;JMP        // Volver al inicio

(END)
@END
0;JMP        // Fin del programa