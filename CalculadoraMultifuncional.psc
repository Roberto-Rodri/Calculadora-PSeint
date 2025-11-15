// ==============================================================================
// 1. ZONA DE SUBPROCESOS
//     Aquí se definen todas las funciones que la calculadora puede realizar.
// ==============================================================================

// Definición de Constantes Globales (Pi) para Geometría
// Nota: PSeint no tiene pi() nativo, usamos una aproximación.
Definir Pi Como Real;
Pi <- 3.1415926535;

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
	Si num2 = 0 Entonces
		Escribir "ERROR: División por cero no permitida.";
		resultado <- 0; // Se retorna 0 como valor de error, aunque se imprime el mensaje
	SiNo
		resultado <- num1 / num2;
	FinSi
FinSubProceso

// ------------------------------------------------------------------------------
// 1.2 MÓDULO: CÁLCULO DE ÁREAS Y PARÁMETROS GEOMÉTRICOS
// ------------------------------------------------------------------------------
SubProceso area <- CalcularAreaCirculo(radio)
	// Lógica para calcular el área de un círculo (pi * r^2).
	area <- Pi * radio * radio;
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
	area <- ((baseMayor + baseMenor) / 2) * altura;
FinSubProceso


// ------------------------------------------------------------------------------
// 1.3 MÓDULO: ESTADÍSTICA BÁSICA
// *Requieren el arreglo (serieNumeros) y el tamaño (n)*
// ------------------------------------------------------------------------------

SubProceso media <- CalcularMedia(serieNumeros, n)
	Definir suma Como Real;
	Definir i Como Entero;
	
	suma <- 0;
	Para i <- 1 Hasta n Con Paso 1 Hacer
		suma <- suma + serieNumeros[i];
	FinPara
	
	// media <- suma / total;
	media <- suma / n;
FinSubProceso

// Subproceso auxiliar para ordenar un arreglo usando Bubble Sort
SubProceso OrdenarArreglo(arr, n)
	Definir i, j Como Entero;
	Definir temp Como Real;
	
	Para i <- 1 Hasta n - 1 Con Paso 1 Hacer
		Para j <- 1 Hasta n - i Con Paso 1 Hacer
			Si arr[j] > arr[j+1] Entonces
				temp <- arr[j];
				arr[j] <- arr[j+1];
				arr[j+1] <- temp;
			FinSi
		FinPara
	FinPara
FinSubProProceso

SubProceso mediana <- CalcularMediana(serieNumeros, n)
	Definir mitad1, mitad2 Como Entero;
	
	// 1. Crear una copia y ordenar el arreglo para no modificar el original
	Definir serieCopia Como Real;
	Dimension serieCopia[n];
	Para i <- 1 Hasta n Con Paso 1 Hacer
		serieCopia[i] <- serieNumeros[i];
	FinPara
	
	OrdenarArreglo(serieCopia, n);
	
	// 2. Calcular Mediana
	Si n MOD 2 = 1 Entonces
		// Cantidad Impar: el elemento central
		mediana <- serieCopia[(n+1)/2];
	SiNo
		// Cantidad Par: promedio de los dos centrales
		mitad1 <- n/2;
		mitad2 <- n/2 + 1;
		mediana <- (serieCopia[mitad1] + serieCopia[mitad2]) / 2;
	FinSi
FinSubProceso

SubProceso moda <- CalcularModa(serieNumeros, n)
	Definir i, j, contador, maxContador, modaActual Como Entero;
	Definir hayModa Como Logico;
	
	maxContador <- 0;
	modaActual <- -1; // Usamos -1 como indicador inicial de no moda
	hayModa <- Falso;
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		contador <- 0;
		// Contar la frecuencia del elemento actual
		Para j <- 1 Hasta n Con Paso 1 Hacer
			Si serieNumeros[i] = serieNumeros[j] Entonces
				contador <- contador + 1;
			FinSi
		FinPara
		
		// Si la frecuencia actual es mayor a la máxima encontrada
		Si contador > maxContador Entonces
			maxContador <- contador;
			modaActual <- serieNumeros[i];
			hayModa <- Verdadero;
		FinSi
	FinPara
	
	// Verificar si todos son únicos (frecuencia máxima = 1)
	Si maxContador <= 1 Entonces
		// Podría ser amodal o multimodal, simplificamos a 'No hay moda clara'
		moda <- -1; 
	SiNo
		moda <- modaActual;
	FinSi
	
FinSubProceso


// ------------------------------------------------------------------------------
// 1.4 MÓDULO: SUCESIÓN DE FIBONACCI
// ------------------------------------------------------------------------------
// (ImprimirFibonacci está COMPLETO)
SubProceso ImprimirFibonacci(num_terminos)
	// Esta función genera e imprime la serie de Fibonacci hasta 'num_terminos'
	
	Definir a, b, c, i Como Entero;
	
	Escribir "Sucesión de Fibonacci:";
	
	// Estructura Si...Sino Si...Sino para manejar los casos
	Si num_terminos <= 0 Entonces
		Escribir "La cantidad de términos debe ser un número positivo.";
	SiNo
		Si num_terminos = 1 Entonces
			Escribir 0;
			
		SiNo // num_terminos >= 2
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
	FinSi
FinSubProceso

SubProceso GenerarFibonacci(inicial, cantidadTerminos)
	// Lógica para generar 'cantidadTerminos' de la sucesión de Fibonacci,
	// Se asume que 'inicial' es el término del que se parte (si fuera 0 o 1, sería estándar).
	// Simplificaremos a la misma lógica de ImprimirFibonacci, dado que la necesidad es similar
	// y para mantener la coherencia del módulo.

	Definir a, b, c, i, j Como Entero;
	
	Escribir "Sucesión de Fibonacci (", cantidadTerminos, " términos):";
	
	Si cantidadTerminos <= 0 Entonces
		Escribir "La cantidad de términos debe ser un número positivo.";
		
	SiNo
		a <- 0;
		b <- 1;
		
		Si cantidadTerminos >= 1 Entonces
			Escribir Sin Saltar a;
		FinSi
		
		Si cantidadTerminos >= 2 Entonces
			Escribir Sin Saltar " ", b;
		FinSi
		
		Para i <- 3 Hasta cantidadTerminos Con Paso 1 Hacer
			c <- a + b;
			Escribir Sin Saltar " ", c;
			a <- b; // Actualizar 'a'
			b <- c; // Actualizar 'b'
		FinPara
		
		Escribir ""; // Salto de línea al final
	FinSi
FinSubProceso


// ==============================================================================
// 2. ZONA DE PROCESO PRINCIPAL (MAIN)
// ==============================================================================

Algoritmo CalculadoraMultifuncional
	// Definición de variables
	Definir opcion, operacionBasica Como Entero;
	Definir numero1, numero2 Como Real;
	Definir totalNumeros, i Como Entero; // 'total' renombrado a 'totalNumeros'
	Definir n, suma, media, medianaResultado, modaResultado Como Real;
	
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
				
				1: // Operaciones Básicas (YA ESTABA COMPLETO)
					Limpiar Pantalla;
					Escribir "==========================================================";
					Escribir "                 OPERACIONES BASICAS                      ";
					Escribir "==========================================================";
					Escribir "1. Suma";
					Escribir "2. Resta";
					Escribir "3. Multiplicacion";
					Escribir "4. Division";
					Escribir "==========================================================";
					Escribir Sin Saltar "Ingrese su opción: ";
					Leer operacionBasica;
					
					Segun operacionBasica Hacer
						1: // Suma
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                         SUMA                             ";
							Escribir "==========================================================";
							Escribir Sin Saltar "Ingresa el primer numero: ";
							Leer numero1;
							Escribir Sin Saltar "Ingresa el segundo numero: ";
							Leer numero2;
							Escribir "El resultado de la suma entre ", numero1, " y ", numero2, " es: ", Sumar(numero1,numero2);
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
						2: // Resta
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                         RESTA                            ";
							Escribir "==========================================================";
							Escribir Sin Saltar "Ingresa el primer numero: ";
							Leer numero1;
							Escribir Sin Saltar "Ingresa el segundo numero: ";
							Leer numero2;
							Escribir "El resultado de la resta entre ", numero1, " y ", numero2, " es: ", Restar(numero1,numero2);
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
						3: // Multiplicacion
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                      MULTIPLICACION                      ";
							Escribir "==========================================================";
							Escribir Sin Saltar "Ingresa el primer numero: ";
							Leer numero1;
							Escribir Sin Saltar "Ingresa el segundo numero: ";
							Leer numero2;
							Escribir "El resultado de la multiplicacion entre ", numero1, " y ", numero2, " es: ", Multiplicar(numero1,numero2);
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
						4: // Division
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                         DIVISION                         ";
							Escribir "==========================================================";
							Escribir Sin Saltar "Ingresa el primer numero: ";
							Leer numero1;
							Escribir Sin Saltar "Ingresa el segundo numero: ";
							Leer numero2;
							Escribir "El resultado de la division entre ", numero1, " y ", numero2, " es: ", Dividir(numero1,numero2);
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "==========================================================";
							Escribir "                          ERROR                           ";
							Escribir "==========================================================";
							Escribir "Opción de operación básica no válida.";
							Escribir "";
							Escribir "Presione cualquier tecla para continuar";
					FinSegun
					
				2: // Cálculo de Áreas, Diámetros y Radios (NUEVO CÓDIGO)
					Limpiar Pantalla;
					Escribir "==========================================================";
					Escribir "                 CÁLCULOS GEOMÉTRICOS                     ";
					Escribir "==========================================================";
					Escribir "1. Área de Círculo (radio)";
					Escribir "2. Área de Cuadrado (lado)";
					Escribir "3. Área de Triángulo (base, altura)";
					Escribir "4. Área de Trapecio (bases y altura)";
					Escribir "5. Calcular Radio de Círculo (diámetro)";
					Escribir "6. Calcular Diámetro de Círculo (radio)";
					Escribir "==========================================================";
					Escribir Sin Saltar "Ingrese su opción: ";
					Leer operacionBasica; // Reutilizamos la variable para la sub-opción
					
					Segun operacionBasica Hacer
						1: // Área Círculo
							Limpiar Pantalla;
							Escribir "--- Cálculo de Área del Círculo ---";
							Escribir Sin Saltar "Ingrese el radio del círculo: ";
							Leer numero1;
							Escribir "El área del círculo es: ", CalcularAreaCirculo(numero1);
						2: // Área Cuadrado
							Limpiar Pantalla;
							Escribir "--- Cálculo de Área del Cuadrado ---";
							Escribir Sin Saltar "Ingrese la longitud del lado: ";
							Leer numero1;
							Escribir "El área del cuadrado es: ", CalcularAreaCuadrado(numero1);
						3: // Área Triángulo
							Limpiar Pantalla;
							Escribir "--- Cálculo de Área del Triángulo ---";
							Escribir Sin Saltar "Ingrese la base: ";
							Leer numero1;
							Escribir Sin Saltar "Ingrese la altura: ";
							Leer numero2;
							Escribir "El área del triángulo es: ", CalcularAreaTriangulo(numero1, numero2);
						4: // Área Trapecio
							Limpiar Pantalla;
							Definir baseMayor, baseMenor, altura Como Real;
							Escribir "--- Cálculo de Área del Trapecio ---";
							Escribir Sin Saltar "Ingrese la Base Mayor: ";
							Leer baseMayor;
							Escribir Sin Saltar "Ingrese la Base Menor: ";
							Leer baseMenor;
							Escribir Sin Saltar "Ingrese la Altura: ";
							Leer altura;
							Escribir "El área del trapecio es: ", CalcularAreaTrapecio(baseMayor, baseMenor, altura);
						5: // Radio Círculo
							Limpiar Pantalla;
							Escribir "--- Cálculo de Radio del Círculo ---";
							Escribir Sin Saltar "Ingrese el diámetro: ";
							Leer numero1;
							Escribir "El radio del círculo es: ", CalcularRadioCirculo(numero1);
						6: // Diámetro Círculo
							Limpiar Pantalla;
							Escribir "--- Cálculo de Diámetro del Círculo ---";
							Escribir Sin Saltar "Ingrese el radio: ";
							Leer numero1;
							Escribir "El diámetro del círculo es: ", CalcularDiametroCirculo(numero1);
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "Opción geométrica no válida.";
					FinSegun
					
				3: // Estadística Básica (CÓDIGO REFACTORIZADO Y COMPLETO)
					Limpiar Pantalla;
					Escribir "==========================================================";
					Escribir "                 ESTADÍSTICA BÁSICA                       ";
					Escribir "==========================================================";
					
					// 1. SOLICITAR LA SERIE DE NÚMEROS (SE HACE UNA SOLA VEZ)
					Escribir "--- Ingreso de la Serie de Números ---";
					Escribir Sin Saltar "Ingrese la cantidad total de números (N): ";
					Leer totalNumeros;
					
					// Definir el arreglo dinámicamente
					Definir serie Como Real;
					Dimension serie[totalNumeros];
					
					Para i <- 1 Hasta totalNumeros Con Paso 1 Hacer
						Escribir Sin Saltar "Ingrese el número ", i, ": ";
						Leer serie[i];
					FinPara
					
					Escribir "";
					Escribir "--- Cálculos Disponibles ---";
					Escribir "1. Media (Promedio)";
					Escribir "2. Moda (Valor más frecuente)";
					Escribir "3. Mediana (Valor central)";
					Escribir "==========================================================";
					Escribir Sin Saltar "Ingrese el cálculo a realizar: ";
					Leer operacionBasica;
					
					// 2. LLAMAR SUBPROCESOS SEGÚN LA OPCIÓN
					Segun operacionBasica Hacer
						1: // Media
							Limpiar Pantalla;
							Escribir "--- Resultado de la Media ---";
							media <- CalcularMedia(serie, totalNumeros);
							Escribir "La **Media** (Promedio) de la serie es: ", media;
						
						2: // Moda
							Limpiar Pantalla;
							Escribir "--- Resultado de la Moda ---";
							modaResultado <- CalcularModa(serie, totalNumeros);
							Si modaResultado = -1 Entonces
								Escribir "No se encontró una **Moda** clara (es amodal o multimodal).";
							SiNo
								Escribir "La **Moda** (valor más frecuente) es: ", modaResultado;
							FinSi
							
						3: // Mediana
							Limpiar Pantalla;
							Escribir "--- Resultado de la Mediana ---";
							medianaResultado <- CalcularMediana(serie, totalNumeros);
							Escribir "La **Mediana** (valor central) de la serie es: ", medianaResultado;
							
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "Opción de estadística no válida.";
					FinSegun
					
					Escribir "";
					Escribir "Presione cualquier tecla para continuar";

				4: // Sucesión de Fibonacci (YA ESTABA COMPLETO)
					Limpiar Pantalla;
					
					Escribir "==========================================================";
					Escribir "              SUCESIÓN DE FIBONACCI                       ";
					Escribir "==========================================================";
					Escribir Sin Saltar "Ingrese la cantidad de términos a generar: ";
					Leer num_terminos;
					
					// Llamada al subproceso para imprimir la serie
					ImprimirFibonacci(num_terminos);
				0: // SALIR
					Escribir "Saliendo de la Calculadora. ¡Hasta pronto!";
					
				De Otro Modo:
					Escribir "ERROR INTERNO: Opción no manejada.";
					
			FinSegun
			
			// Pausar solo si no está saliendo
            Si opcion <> 0 Entonces
                Esperar Tecla;
            FinSi
			
		FinSi
		
	Hasta Que opcion = 0; // El ciclo se repite hasta que el usuario elija la opción 0
FinAlgoritmo
