// Cuenta regresiva desde N hasta 0
@0
D=M          // Cargar N en D
@N
M=D          // Guardar N en RAM[N]
@1
M=0          // Inicializar la posición de almacenamiento en RAM[1]

(LOOP)
@N
D=M          // Cargar N en D
@END
D;JEQ        // Si N es 0, saltar al final

@N
D=M          // Cargar N en D
@1
A=M          // Obtener la dirección de almacenamiento
M=D          // Almacenar el valor de N en RAM[A]

@N
D=M          // Cargar N en D
@1
D=D+1        // Incrementar el índice de almacenamiento
@1
M=D          // Actualizar la posición de almacenamiento

@N
D=M          // Cargar N en D
D=D-1        // Reducir N en 1
@N
M=D          // Guardar el nuevo valor de N

@LOOP
0;JMP        // Volver al inicio del bucle

(END)
@END
0;JMP        // Fin del programa
