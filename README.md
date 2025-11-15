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

* **Proceso Principal:** Descripción de cómo el `Proceso CalculadoraMultifuncional` gestiona el menú y las llamadas a las funciones. 
* **Subprocesos:** Breve explicación de la división del código en módulos (Subprocesos) para cada funcionalidad.

### 2.2. Robustez y Validación de Entradas

* Explicar la implementación del manejo de excepciones (ej., **división por cero**) y la validación de que el usuario ingrese el tipo de dato correcto en cada módulo.

### 2.3. Control de Versiones y Colaboración

* **Estrategia de Branching:** Explicar el uso de ramas (`feature/nombre_modulo`) para el trabajo en equipo.
* **Commits y PRs:** Describir la convención de los commits (`[FEAT], [FIX], [DOCS]`) y el uso de Pull Requests para la revisión de código.
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
| Estudiante 1 | *[Indicar: Operaciones Básicas y Geometría (Parcial)]* |
| Estudiante 2 | *[Indicar: Geometría (Completa)]* |
| Frida Sofia Coronel Olvera | *[Indicar: Estadística Básica]* |
| Estudiante 4 | *[Indicar: Sucesión de Fibonacci]* |

---

 