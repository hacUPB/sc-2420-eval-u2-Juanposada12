// Suma de los números impares hasta N
@0
D=M          // Cargar N en D
@N
M=D          // Guardar N en RAM[N]
@1
M=0          // Inicializar la suma en RAM[1]

(LOOP)
@N
D=M          // Cargar N en D
@END
D;JEQ        // Si N es 0, saltar al final

@N
D=M
@2
D=D%2       // Calcular N % 2
@ADD
D;JEQ        // Si N es par, saltar a ADD

// Si N es impar, sumarlo
@N
D=M
@1
D=D+M       // D = N + suma
@1
M=D          // Almacenar la nueva suma en RAM[1]

// Reducir N en 1
@N
D=M
@1
D=D-1       // N = N - 1
@N
M=D          // Guardar el nuevo valor de N
@LOOP
0;JMP        // Volver al inicio del bucle

(ADD)
// Reducir N en 1
@N
D=M
@1
D=D-1       // N = N - 1
@N
M=D          // Guardar el nuevo valor de N
@LOOP
0;JMP        // Volver al inicio del bucle

(END)
@END
0;JMP        // Fin del programa   