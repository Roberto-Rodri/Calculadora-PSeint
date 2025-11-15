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
	// Lógica para calcular el área de un círculo (pi * r^2).
	area <- PI * radio^2;
FinSubProceso

SubProceso radio <- CalcularRadioCirculo(diametro)
	// Lógica para calcular el radio del círculo (d / 2).
	radio <- diametro / 2;
FinSubProceso

SubProceso diametro <- CalcularDiametroCirculo(radio)
	// Lógica para calcular el diámetro del círculo (2 * r).
	diametro <- 2 * radio;
FinSubProceso

SubProceso area <- CalcularAreaCuadrado(lado)
	// Lógica para calcular el área de un cuadrado (lado^2).
	area <- lado * lado;
FinSubProceso

SubProceso area <- CalcularAreaTriangulo(base, altura)
	// Lógica para calcular el área de un triángulo ((b * h) / 2).
	area <- (base * altura) / 2;
FinSubProceso

SubProceso area <- CalcularAreaTrapecio(baseMayor, baseMenor, altura)
	// Lógica para calcular el área de un trapecio (((B + b) / 2) * h).
	area <- ((baseMayor + baseMenor) * altura) / 2;
FinSubProceso

// ------------------------------------------------------------------------------
// 1.3 MÓDULO: ESTADÍSTICA BÁSICA
// ------------------------------------------------------------------------------
SubProceso media <- CalcularMedia(serieNumeros)
	// Comentario: Lógica para calcular la media aritmética (promedio) de un arreglo de números.
FinSubProceso

SubProceso mediana <- CalcularMediana(serieNumeros)
	// Comentario: Lógica para calcular la mediana (valor central) de un arreglo de números.
FinSubProceso

SubProceso moda <- CalcularModa(serieNumeros)
	// Comentario: Lógica para calcular la moda (valor más frecuente) de un arreglo de números.
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
	
	// Bucle principal de la calculadora
	// Bucle principal de la calculadora
	Repetir
		Limpiar Pantalla; // Limpia la pantalla para un menú más limpio
		// 1. Mostrar Menú al Usuario
		Escribir "==========================================================";
		Escribir "         CALCULADORA MULTIFUNCIONAL - MENÚ PRINCIPAL        ";
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
					Escribir "                       OPERACIONES BASICAS                ";
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
							Escribir "                               SUMA                         ";
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
							Escribir "                               RESTA                        ";
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
							Escribir "                          MULTIPLICACION                  ";
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
							Escribir "                               DIVISION                     ";
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
							Escribir "                                ERROR                       ";
							Escribir "==========================================================";
							
							// Confirmacion del usuario para continuar y limpiar la pantalla
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
					FinSegun
					
					// Comentario: Llamar al subproceso encargado de las operaciones básicas.
					// SubProceso ManejarOperacionesBasicas(); 
				2: // Cálculo de Áreas, Diámetros y Radios
					Limpiar Pantalla;
					
					// 1. Mostrar Menú de Geometría
					Escribir "==========================================================";
					Escribir "                 CÁLCULO GEOMÉTRICO                     ";
					Escribir "==========================================================";
					Escribir "1. Área de Círculo";
					Escribir "2. Radio de Círculo (dado el diámetro)";
					Escribir "3. Diámetro de Círculo (dado el radio)";
					Escribir "4. Área de Cuadrado";
					Escribir "5. Área de Triángulo";
					Escribir "6. Área de Trapecio";
					Escribir "==========================================================";
					Escribir Sin Saltar "Ingrese su opción: ";
					Leer opcionGeometria;
					
					// Estructura de Control (Switch/Segun) para Geometría
					Segun opcionGeometria Hacer
						1: // Área Círculo
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                         ÁREA DE CÍRCULO                    ";
							Escribir "==========================================================";
							Escribir "Ingrese el radio del círculo:";
							Leer radio;
							Escribir "El área del círculo es: ", CalcularAreaCirculo(radio);
							
						2: // Radio Círculo
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                       RADIO DE CÍRCULO                     ";
							Escribir "==========================================================";
							Escribir "Ingrese el diámetro del círculo:";
							Leer diametro;
							Escribir "El radio del círculo es: ", CalcularRadioCirculo(diametro);
							
						3: // Diámetro Círculo
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                     DIÁMETRO DE CÍRCULO                  ";
							Escribir "==========================================================";
							Escribir "Ingrese el radio del círculo:";
							Leer radio;
							Escribir "El diámetro del círculo es: ", CalcularDiametroCirculo(radio);
							
						4: // Área Cuadrado
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                       ÁREA DE CUADRADO                   ";
							Escribir "==========================================================";
							Escribir "Ingrese el lado del cuadrado:";
							Leer lado;
							Escribir "El área del cuadrado es: ", CalcularAreaCuadrado(lado);
							
						5: // Área Triángulo
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                      ÁREA DE TRIÁNGULO                   ";
							Escribir "==========================================================";
							Escribir "Ingrese la base del triángulo:";
							Leer base;
							Escribir "Ingrese la altura del triángulo:";
							Leer altura;
							Escribir "El área del triángulo es: ", CalcularAreaTriangulo(base, altura);
							
						6: // Área Trapecio
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                      ÁREA DE TRAPECIO                    ";
							Escribir "==========================================================";
							Escribir "Ingrese la base mayor del trapecio:";
							Leer baseMayor;
							Escribir "Ingrese la base menor del trapecio:";
							Leer baseMenor;
							Escribir "Ingrese la altura del trapecio:";
							Leer altura;
							Escribir "El área del trapecio es: ", CalcularAreaTrapecio(baseMayor, baseMenor, altura);
							
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                                ERROR                       ";
							Escribir "==========================================================";
							Escribir "Opción geométrica no válida.";
					FinSegun
					
					// Confirmacion del usuario para continuar y limpiar la pantalla
					Escribir "";
					Escribir "Presione cualquier tecla para continuar";
					
				3: // Estadística Básica
					// Comentario: Llamar al subproceso encargado de la estadística (Media, Mediana, Moda).
					// SubProceso ManejarEstadistica();
					Escribir "Ha seleccionado Estadística Básica. (PENDIENTE DE IMPLEMENTAR). De ENTER para continuar";
					
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

		