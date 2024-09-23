// División entera de dos números en RAM[0] y RAM[1]
// Cociente se almacena en RAM[2]
@0
D=M          // Cargar el numerador (RAM[0]) en D
@3
M=0          // Inicializar el cociente en RAM[2] (posición 3)

@1
D=M          // Cargar el denominador (RAM[1]) en D
@DENOM
D;JEQ        // Si el denominador es 0, saltar a END (no se puede dividir por cero)

@0
D=M          // Cargar el numerador nuevamente en D
@LOOP
D;JLE        // Si el numerador <= 0, salir del bucle

@1
D=M          // Cargar el denominador en D
@SUB
D=D-M        // D = numerador - denominador
@CHECK
D;JGE        // Si el numerador >= denominador, continuar

// Aquí D < 0, entonces no se puede hacer más divisiones
@0
D=M          // Cargar nuevamente el numerador
@END
D;JGT        // Si el numerador es mayor que 0, salir al final

(ADD)
@2
M=M+1        // Incrementar el cociente
@0
D=M          // Cargar el numerador nuevamente
@1
D=D-M        // D = numerador - denominador
@0
M=D          // Actualizar el numerador

@LOOP
0;JMP        // Volver al inicio del bucle

(END)
@END
0;JMP        // Fin del programa