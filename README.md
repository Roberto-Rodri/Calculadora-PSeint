# 💻 TÍTULO DEL PROYECTO: Calculadora Multifuncional en PSeInt

---

## 1. 💡 Descripción General del Proyecto: ¿Qué Hicimos?

Este repositorio alberga el código fuente y la documentación formal de una **Calculadora Multifuncional**, desarrollada en **PSeInt** bajo un enfoque de **Programación Modular**. El proyecto fue diseñado para reforzar habilidades de programación estructurada y la aplicación profesional de control de versiones con Git/GitHub.

La calculadora integra las siguientes funcionalidades extendidas:

1.  **Operaciones Básicas:** Suma, Resta, Multiplicación y División.
2.  **Geometría:** Cálculo de áreas, diámetros y radios para figuras clave (círculo, cuadrado, triángulo y trapecio).
3.  **Estadística Básica:** Módulo para calcular la Media, Mediana y Moda de una serie de números.
4.  **Sucesión de Fibonacci:** Generación de términos de la sucesión a partir de un valor inicial definido por el usuario.

---

## 2. ⚙️ Arquitectura y Lógica del Código: ¿Cómo lo Hicimos?

En esta sección, se explica la estructura interna del código (`.psc`) y las técnicas de desarrollo utilizadas.

### 2.1. Estructura Modular

* **Proceso Principal:** La lógica central reside en Proceso CalculadoraMultifuncional. Este actúa como el "controlador" principal de la aplicación. Utiliza un bucle Repetir...Hasta Que para mantener el programa en ejecución hasta que el usuario elija la opción "0" (Salir). Dentro del bucle, gestiona la navegación mostrando el menú principal, leyendo la opcion del usuario y utilizando una estructura Segun (equivalente a un switch) para dirigir el flujo del programa al módulo correspondiente.

* **Subprocesos:** Para mantener el código limpio y organizado, adoptamos un enfoque modular. Cada funcionalidad específica se aísla en un SubProceso (función). Por ejemplo, en lugar de poner la lógica de la suma dentro del Segun principal, simplemente llamamos al subproceso Sumar(num1, num2). Esta "separación de responsabilidades" hace que el Proceso Principal sea fácil de leer (solo se encarga de menús y llamadas) y que los subprocesos sean fáciles de mantener (cada uno hace una sola cosa, como CalcularAreaCirculo o Restar).

### 2.2. Robustez y Validación de Entradas

En nuestro código, la robustez se maneja en dos niveles:

Validación de Opciones de Menú: Implementamos una validación explícita después de leer la opcion del menú principal. Usando una estructura Si opcion < 0 O opcion > 4 Entonces..., nos aseguramos de que el usuario solo pueda ingresar números dentro del rango permitido. Si ingresa una opción inválida, se muestra un mensaje de error y el bucle Repetir vuelve a mostrar el menú, previniendo que el programa intente ejecutar un caso inexistente en la estructura Segun.

Manejo de Excepciones (Puntos de Mejora):

División por Cero: Actualmente, nuestro subproceso Dividir(num1, num2) ejecuta num1 / num2 directamente. Si el usuario ingresa 0 como num2, PSeInt detendrá el programa con un error. Una mejora pendiente clave es añadir una validación dentro de ese subproceso (ej. Si num2 = 0 Entonces Escribir "Error: No se puede dividir por cero" Sino ...).

Validación de Tipo de Dato: Confiamos en el intérprete de PSeInt para el manejo de tipos. Cuando usamos Leer numero1 (definido como Real), si el usuario ingresa texto (ej. "hola"), PSeInt automáticamente detiene la ejecución y reporta el error. No implementamos un bucle de validación manual para este caso, asumiendo que el manejo de errores del entorno es suficiente para este proyecto.

### 2.3. Control de Versiones y Colaboración

* **Estrategia de Branching:** Utilizamos un modelo de ramificación basado en funcionalidades (Git Flow simplificado). La rama main (o master) se mantiene como la versión estable y funcional del proyecto. Ningún desarrollador trabaja directamente sobre main. Para añadir una nueva funcionalidad (como el módulo de geometría o estadística), se crea una nueva rama descriptiva a partir de main, siguiendo la convención feature/nombre_modulo (ej. feature/geometria, feature/estadistica).

* **Commits y PRs:** Commits: Todo el trabajo se guarda en la rama feature usando commits atómicos y descriptivos. Seguimos una convención para los mensajes de commit, como [FEAT] para nuevas funcionalidades (ej. [FEAT] Agrega subproceso CalcularAreaTriangulo), [FIX] para corrección de errores (ej. [FIX] Corrige validación en menú de geometría) o [DOCS] para documentación.

Pull Requests: Una vez que una funcionalidad está completa en su rama (feature/geometria), no se fusiona (merge) directamente a main. En su lugar, se abre un Pull Request (PR) en GitHub. Este PR actúa como una solicitud de revisión: los otros miembros del equipo pueden revisar el código, dejar comentarios y asegurarse de que no introduce errores. Solo después de que el PR es aprobado por el equipo, el código se fusiona a main, garantizando la calidad y la integridad de la rama principal.
* **[Aquí se adjuntará el enlace al historial de Commits en GitHub]**

---

## 3. 🎯 Propósito y Uso de los Módulos: ¿Para Qué lo Hicimos?

Describa el valor y la justificación de cada módulo funcional.

| Módulo | Justificación (Propósito) |
| :--- | :--- |
| **Operaciones Básicas** | *[Escribir el propósito, ej: Ofrecer las funciones aritméticas esenciales para cualquier necesidad de cálculo.]* |
| **Módulo Geometría** | *[Escribir el propósito, ej: Permitir cálculos rápidos y precisos de dimensiones geométricas, apoyando tareas de diseño o ingeniería.]* |
| **Módulo Estadística** | *[Escribir el propósito, ej: Suministrar herramientas para el análisis descriptivo básico de conjuntos de datos numéricos.]* |
| **Módulo Fibonacci** | *[Escribir el propósito, ej: Ejemplificar la implementación de una secuencia matemática recursiva y demostrar el manejo de series numéricas.]* |

---

## 4. 🚧 Desafíos y Lecciones Aprendidas

Esta sección es crucial para el entregable. Documente los problemas técnicos o de coordinación y cómo se resolvieron.

### Dificultades Técnicas

* **[Dificultad #1]:** Estadística básica (media, mediana y moda). El principal reto fue el manejo y ordenamiento de colecciones de datos. Por ejemplo, la mediana, requiere que la lista de números ingresados sea ordenada primero y despues aplicar formulas diferentes si la cantidad de números fue par o impar.
    * **Solución:** Implementación de arreglos, definir un arreglo para almacenar los números ingresados por el usuario. Usar un algortimo de ordenamiento simple manualmente, como el método burbuja o selección para ordenar el arreglo. 
* **[Dificultad #2]:** Sucesión de Fibonacci con un número inicial. La parte más compleja fue generar únicamente los números que pertenezcan a la sucesión de Fibonacci a partir de ese número inicial. Si el número incial no es un número de Fibonacci (ejemplo el 6), la funcipon debe identificar ese error. 
    * **Solución:** Usar un bucle Mientras adicional antes de un bucle de generación para alcanzar el número inicial sin imprimir.  

### Dificultades de Colaboración

* **[Dificultad #3]:** Uso de programas como Github, Visual Studio y Warp. No todos los integrantes del equipo habían trabajado anteriormente con alguno de los programas mencionados, o incluso con ninguno de los tres, lo que hizo un poco más tardado y complejo el proceso.
    * **Solución:** Se nos explicó detallada y brevemente la manera en la que se debía trabajar en cada programa, además de que se estuvo al pendiente en todo momento para resolver dudas. 

---

## 5. 🧑‍💻 Autores y Contribuciones

| Nombre del Estudiante | Módulo Principal Asignado |
| :--- | :--- |
| Jimenez Rodriguez Roberto Carlos | *Operaciones Básicas* |
| Estudiante 2 | *[Indicar: Geometría (Completa)]* |
| Estudiante 3 | *[Indicar: Estadística Básica]* |
| Estudiante 4 | *[Indicar: Sucesión de Fibonacci]* |

---

 