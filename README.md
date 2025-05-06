# Compilador Simple con Lex y Yacc

Este proyecto implementa un compilador básico que analiza asignaciones de variables y operaciones aritméticas simples utilizando **Lex** y **Yacc**.
El objetivo principal es comprender las fases iniciales de compilación: el análisis léxico y el análisis sintáctico.

## Características

* Reconocimiento de asignaciones simples (ejemplo: `a = 5;`).
* Reconocimiento de operaciones aritméticas (`+`, `-`, `*`, `/`).
* Soporte para expresiones aritméticas complejas con precedencia.
* Manejo de errores para tokens inválidos.
* Salidas que indican el tipo de operación y asignación realizada.

## Archivos

* `simple_language.l`: Define los tokens para el analizador léxico.
* `simple_language.y`: Define la gramática para el analizador sintáctico.

## Ejecución

### Requisitos

* **Lex** (flex)
* **Yacc** (bison)
* **GCC**

### Pasos para compilar y ejecutar

1. Generar el analizador léxico:

```
lex simple_language.l
```

2. Generar el analizador sintáctico:

```
yacc -d simple_language.y
```

3. Compilar los analizadores:

```
gcc lex.yy.c simple_language.tab.c -o parser
```

4. Ejecutar el compilador:

```
./parser
```

### Ejemplos de uso

**Asignación simple**

```
a = 5;
```

**Operación aritmética**

```
b = 4 + 3;
```

**Expresión compleja**

```
c = (2 + 3) * 4;
```

**Error léxico**

```
d = @3;
```

## Notas

* El compilador **no almacena variables ni calcula resultados finales**, solo reconoce y valida las expresiones.
* Este proyecto es parte de un laboratorio académico para introducirse en Lex y Yacc.

## Repositorio

Este proyecto es parte de un repositorio privado que incluye el historial de commits y la evolución del laboratorio.

## Video de demostración

https://youtu.be/PLyTrlja_S4

---

**Autores:**
Michelle Mejía - 22596
Silvia Illescas - 22376
