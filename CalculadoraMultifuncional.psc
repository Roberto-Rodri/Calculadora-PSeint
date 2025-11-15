// ==============================================================================
// 1. ZONA DE SUBPROCESOS
//    Aquí se definen todas las funciones que la calculadora puede realizar.
// ==============================================================================

// ------------------------------------------------------------------------------
// 1.1 MÓDULO: OPERACIONES BÁSICAS
// ------------------------------------------------------------------------------
SubProceso resultado <- Sumar(num1, num2)
	resultado <- num1 + num2;
FinSubProceso

SubProceso resultado <- Restar(num1, num2)
	resultado <- num1 - num2;
FinSubProceso

SubProceso resultado <- Multiplicar(num1, num2)
	resultado <- num1 * num2;
FinSubProceso

SubProceso resultado <- Dividir(num1, num2)
	resultado <- num1 / num2;
FinSubProceso

// ------------------------------------------------------------------------------
// 1.2 MÓDULO: CÁLCULO DE ÁREAS Y PARÁMETROS GEOMÉTRICOS
// ------------------------------------------------------------------------------
SubProceso area <- CalcularAreaCirculo(radio)
	// Comentario: Lógica para calcular el área de un círculo (pi * r^2).
FinSubProceso

SubProceso radio <- CalcularRadioCirculo(diametro)
	// Comentario: Lógica para calcular el radio del círculo (d / 2).
FinSubProceso

SubProceso diametro <- CalcularDiametroCirculo(radio)
	// Comentario: Lógica para calcular el diámetro del círculo (2 * r).
FinSubProceso

SubProceso area <- CalcularAreaCuadrado(lado)
	// Comentario: Lógica para calcular el área de un cuadrado (lado^2).
FinSubProceso

SubProceso area <- CalcularAreaTriangulo(base, altura)
	// Comentario: Lógica para calcular el área de un triángulo ((b * h) / 2).
FinSubProceso

SubProceso area <- CalcularAreaTrapecio(baseMayor, baseMenor, altura)
	// Comentario: Lógica para calcular el área de un trapecio (((B + b) / 2) * h).
FinSubProceso

// ------------------------------------------------------------------------------
// 1.3 MÓDULO: ESTADÍSTICA BÁSICA
// ------------------------------------------------------------------------------
SubProceso media <- CalcularMedia(serieNumeros)
	media <- suma  / total;
FinSubProceso

SubProceso mediana <- CalcularMediana(serieNumeros)
	
FinSubProceso

SubProceso moda <- CalcularModa(serieNumeros)
	moda <- a;
FinSubProceso

// ------------------------------------------------------------------------------
// 1.4 MÓDULO: SUCESIÓN DE FIBONACCI
// ------------------------------------------------------------------------------
SubProceso ImprimirFibonacci(num_terminos)
	// Esta función genera e imprime la serie de Fibonacci hasta 'num_terminos'
	
	Definir a, b, c, i Como Entero;
	
	Escribir "Sucesión de Fibonacci:";
	
	// Estructura Si...Sino Si...Sino para manejar los casos
	Si num_terminos <= 0 Entonces
		Escribir "La cantidad de términos debe ser un número positivo.";
	FinSi
	
	 Si num_terminos = 1 Entonces
			Escribir 0;
			
		Sino // num_terminos >= 2
			a <- 0;
			b <- 1;
			
			// Imprimir los primeros dos términos
			Escribir Sin Saltar a, " ", b;
			
			// Calcular e imprimir términos restantes
			Para i <- 3 Hasta num_terminos Con Paso 1 Hacer
				c <- a + b;
				Escribir Sin Saltar " ", c;
				a <- b; // Actualizar 'a'
				b <- c; // Actualizar 'b'
			FinPara
			
			Escribir ""; // Salto de línea al final
			
		FinSi
FinSubProceso
SubProceso GenerarFibonacci(inicial, cantidadTerminos)
	// Comentario: Lógica para generar 'cantidadTerminos' de la sucesión de Fibonacci,
	//  asegurando que los números generados sigan la secuencia correcta a partir del 'inicial'.
	//  No debe retornar valor, solo mostrar la sucesión.
FinSubProceso

	
	
// ==============================================================================
// 2. ZONA DE PROCESO PRINCIPAL (MAIN)
//    Aquí se gestiona el flujo del programa: el menú, la validación de la opción
//    y las llamadas a los subprocesos definidos arriba.
// ==============================================================================

Algoritmo CalculadoraMultifuncional
	// Definición de variables
	Definir opcion, operacionBasica Como Entero;
	Definir numero1, numero2 Como Real;
	Definir total,x Como Entero;
	Definir n,suma,media Como Real;
	Definir num, i, j, contador, maxContador, moda Como Entero;
	
	
	// Bucle principal de la calculadora
	Repetir
		Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
		
		// 1. Mostrar Menú al Usuario
		Escribir "==========================================================";
		Escribir "        CALCULADORA MULTIFUNCIONAL - MENÚ PRINCIPAL       ";
		Escribir "==========================================================";
		Escribir "1. Operaciones Básicas (+, -, *, /)";
		Escribir "2. Cálculo de Áreas, Diámetros y Radios";
		Escribir "3. Estadística Básica (Media, Mediana, Moda)";
		Escribir "4. Sucesión de Fibonacci";
		Escribir "0. SALIR de la Calculadora";
		Escribir "==========================================================";
		Escribir Sin Saltar "Ingrese su opción: ";
		Leer opcion;
		
		// 2. Validación de Entrada
		Si opcion < 0 O opcion > 4 Entonces
			Escribir "ERROR: Opción no válida. Por favor, ingrese un número entre 0 y 4. De ENTER para continuar";
			Esperar Tecla; // Pausa para que el usuario pueda leer el error
		SiNo
			// 3. Estructura de Control (Switch/Segun)
			Segun opcion Hacer
				
				1: // Operaciones Básicas
					Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
					
					// 1. Mostrar Menú al Usuario
					Escribir "==========================================================";
					Escribir "                    OPERACIONES BASICAS                   ";
					Escribir "==========================================================";
					Escribir "1. Suma";
					Escribir "2. Resta";
					Escribir "3. Multiplicacion";
					Escribir "4. Division";
					Escribir "==========================================================";
					Escribir Sin Saltar "Ingrese su opción: ";
					Leer operacionBasica;
					
					// Estructura de Control (Switch/Segun)
					Segun operacionBasica Hacer
						1: // Suma
							Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
							
							// Encabezado
							Escribir "==========================================================";
							Escribir "                         SUMA                             ";
							Escribir "==========================================================";
							
							// Solicitar datos
							Escribir "Ingresa el primer numero: ";
							Leer numero1;
							Escribir "Ingresa el segundo numero: "
							Leer numero2;
							
							// Imprimir del resultado
							Escribir "El resultado de la suma entre ", numero1, " y ", numero2, " es: ", Sumar(numero1,numero2);
							
							// Confirmacion del usuario para continuar y limpiar la pantalla
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
						2: // Resta
							Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
							
							// Encabezado
							Escribir "==========================================================";
							Escribir "                        RESTA                             ";
							Escribir "==========================================================";
							
							// Solicitar datos
							Escribir "Ingresa el primer numero: ";
							Leer numero1;
							Escribir "Ingresa el segundo numero: "
							Leer numero2;
							
							// Imprimir del resultado
							Escribir "El resultado de la resta entre ", numero1, " y ", numero2, " es: ", Restar(numero1,numero2);
							
							// Confirmacion del usuario para continuar y limpiar la pantalla
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
						3: // Multiplicacion
							Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
							
							// Encabezado
							Escribir "==========================================================";
							Escribir "                    MULTIPLICACION                        ";
							Escribir "==========================================================";
							
							// Solicitar datos
							Escribir "Ingresa el primer numero: ";
							Leer numero1;
							Escribir "Ingresa el segundo numero: "
							Leer numero2;
							
							// Imprimir del resultado
							Escribir "El resultado de la multiplicacion entre ", numero1, " y ", numero2, " es: ", Multiplicar(numero1,numero2);
							
							// Confirmacion del usuario para continuar y limpiar la pantalla
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
						4:
							Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
							
							// Encabezado
							Escribir "==========================================================";
							Escribir "                        DIVISION                          ";
							Escribir "==========================================================";
							
							// Solicitar datos
							Escribir "Ingresa el primer numero: ";
							Leer numero1;
							Escribir "Ingresa el segundo numero: "
							Leer numero2;
							
							// Imprimir del resultado
							Escribir "El resultado de la division entre ", numero1, " y ", numero2, " es: ", Dividir(numero1,numero2);
							
							// Confirmacion del usuario para continuar y limpiar la pantalla
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
						De Otro Modo:
							Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
							
							// Encabezado
							Escribir "==========================================================";
							Escribir "                          ERROR                           ";
							Escribir "==========================================================";
							
							// Confirmacion del usuario para continuar y limpiar la pantalla
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
					FinSegun
					
					// Comentario: Llamar al subproceso encargado de las operaciones básicas.
					// SubProceso ManejarOperacionesBasicas(); 
				2: // Cálculo de Áreas, Diámetros y Radios
					// Comentario: Llamar al subproceso encargado de los cálculos geométricos.
					// SubProceso ManejarGeometria();
					Escribir "Ha seleccionado Cálculo de Áreas. (PENDIENTE DE IMPLEMENTAR). De ENTER para continuar";
					
				3: // Estadística Básica
					
							// Comentario: Llamar al subproceso encargado de la estadística (Media, Mediana, Moda).
							// SubProceso ManejarEstadistica();
							Escribir "Ha seleccionado Estadística Básica. De ENTER para continuar";
							// 1. Mostrar Menú al Usuario
							Escribir "==========================================================";
							Escribir "                    ESTADISTICA BASICA                    ";
							Escribir "==========================================================";
							Escribir "1. Media";
							Escribir "2. Moda";
							Escribir "3. Mediana";
							Escribir "==========================================================";
							Escribir Sin Saltar "Ingrese su opción: ";
							Leer operacionBasica;
							
					// Estructura de Control (Switch/Segun)
					Segun operacionBasica Hacer
						1: // Media
							Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
							
							// Encabezado
							Escribir "==========================================================";
							Escribir "                         MEDIA                            ";
							Escribir "==========================================================";
							
							// Solicitar datos
							Escribir "Ingresa el total de numeros";
							Leer total;
							x = 1;
							suma = 0;
							Mientras x <= total Hacer
								Escribir  "Ingresa el numero", x;
								Leer n;
								suma= suma + n;
								x= x + 1;
							FinMientras
							media = suma / total;
							
							// Imprimir el resultado
							Escribir  " La media es :", media; 
							
						2: // Moda
							Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
							
							// Encabezado
							Escribir "==========================================================";
							Escribir "                         MODA                             ";
							Escribir "==========================================================";
							
							// Solicitar datos
							Escribir "Ingrese la cantidad de números en el conjunto:";
							Leer num;
							
							// Definir el vector (arreglo) para almacenar los números
							Dimension numeros[num];
							
							// Ingreso de los elementos del vector
							Escribir "Ingrese los ", num, " números uno por uno:";
							Para i <- 1 Hasta num Con Paso 1 Hacer
								Escribir "Número ", i+1, ":";
								Leer numeros[i];
							FinPara
							
							// Inicialización de variables de la moda
							maxContador <- 1;
							moda <- numeros[1]; // Inicializamos la moda con el primer elemento
							
							// --- Cálculo de la Moda ---
							Para i <- 1 Hasta num Con Paso 1 Hacer
								// Contar cuántas veces se repite el número actual (numeros[i])
								contador <- 1;
								Para j <- 1 Hasta num Con Paso 1 Hacer
									Si numeros[i] = numeros[j] Entonces
										contador <- contador + 1;
									FinSi
								FinPara
								// Si la cuenta actual es mayor al máximo contador, 
								// actualizamos el máximo contador y la moda
								Si contador > maxContador Entonces
									maxContador <- contador;
									moda <- numeros[i];
								FinSi
							FinPara
							
							// --- Mostrar el Resultado ---
							Si maxContador = 1 Entonces
								Escribir "Todos los números son únicos o se repiten la misma cantidad de veces. No hay una moda clara (o es amodal).";
								Escribir "La frecuencia máxima encontrada es 1.";
							Sino
								Escribir "--- Resultado ---";
								Escribir "La **Moda** del conjunto es: ", moda;
								Escribir "Se repite ", maxContador, " veces.";
							FinSi
							
						3: //Mediana
							
							// Confirmacion del usuario para continuar y limpiar la pantalla
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
						De Otro Modo:
							Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
							
							// Encabezado
							Escribir "==========================================================";
							Escribir "                          ERROR                           ";
							Escribir "==========================================================";
							
							// Confirmacion del usuario para continuar y limpiar la pantalla
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
					FinSegun
							
							
					
				4: // Sucesión de Fibonacci
					// Comentario: Llamar al subproceso encargado de generar la sucesión.
					// SubProceso ManejarFibonacci();
					Limpiar Pantalla;
					
					Escribir "==========================================================";
					Escribir "              SUCESIÓN DE FIBONACCI                     ";
					Escribir "==========================================================";
					Escribir Sin Saltar "Ingrese la cantidad de términos a generar: ";
					Leer num_terminos;
					
					// Llamada al subproceso para imprimir la serie
					ImprimirFibonacci(num_terminos);
				0: // SALIR
					Escribir "Saliendo de la Calculadora. ¡Hasta pronto!";
					
				De Otro Modo: // Se puede omitir si ya se hizo la validación con el Si-Entonces, pero se mantiene por seguridad.
					Escribir "ERROR INTERNO: Opción no manejada.";
					
			FinSegun
			
			// Pausar solo si no está saliendo
            Si opcion <> 0 Entonces
                Esperar Tecla;
            FinSi
			
		FinSi
		
	Hasta Que opcion = 0; // El ciclo se repite hasta que el usuario elija la opción 0
FinAlgoritmo

