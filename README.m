# Actividad de Arreglos: Ventas del Colmado Don Pepe

Programa en C++ que registra las ventas diarias de una semana usando un arreglo unidimensional y calcula estadísticas básicas.

## Autor
- **DocenteE:**Gamalier Reyes
- **Nombre:** Yadier Rivera De Oleo
- **Carrera:** Ingeniería en Ciberseguridad, UCE
- **Matrícula:** 2026-0109

## Descripción

El programa guarda las ventas de los 7 días de la semana en un arreglo de tipo `double`. Cada posición corresponde a un día, de lunes (posición 0) a domingo (posición 6).

El programa hace lo siguiente:

1. Declara un arreglo de 7 posiciones de tipo `double` para guardar las ventas diarias.
2. Pide al usuario la venta de cada día, mostrando el nombre del día (por ejemplo, `Ventas del Lunes: RD$`).
3. Muestra el listado de ventas registradas, indicando el día y el monto.
4. Calcula y muestra:
   - El total vendido en la semana.
   - El promedio diario de ventas.
   - El día con mayor venta y su monto.
   - El día con menor venta y su monto.
   - Cuántos días superaron el promedio, indicando cuáles fueron.

Además, valida que el monto ingresado no sea negativo; si lo es, vuelve a pedir el dato.

## Archivos

| Archivo | Descripción |
| --- | --- |
| `ventas.cpp` | Código fuente del programa |
| `README.md` | Este documento |

## Cómo compilar y ejecutar

### Con g++ (terminal)

```bash
g++ -o ventas ventas.cpp
./ventas
```

En Windows, el ejecutable se llama `ventas.exe`.

### Con Visual Studio

1. Crear un proyecto de **Aplicación de consola** en C++.
2. Pegar el contenido de `ventas.cpp` en el archivo principal.
3. Ejecutar con **Ctrl + F5** (Iniciar sin depurar) para que la consola se mantenga abierta.

## Ejemplo de uso

Entrada (un valor por día, solo el número, sin `RD$` ni comas):

```
3500
2800
3000
3100
4200
7200
4650
```

Salida:

```
===== VENTAS DEL COLMADO DON PEPE =====
Lunes:     RD$ 3500.00
Martes:    RD$ 2800.00
Miercoles: RD$ 3000.00
Jueves:    RD$ 3100.00
Viernes:   RD$ 4200.00
Sabado:    RD$ 7200.00
Domingo:   RD$ 4650.00
---------------------------------------
Total semanal:   RD$ 28450.00
Promedio diario: RD$ 4064.29
Mayor venta: Sabado (RD$ 7200.00)
Menor venta: Martes (RD$ 2800.00)
Dias sobre el promedio: 3 -> Viernes, Sabado, Domingo
```

## Conceptos aplicados

- Arreglos unidimensionales (`double ventas[7]` y `string nombres[7]`).
- Ciclos `for` y `do...while` para recorrer el arreglo y validar la entrada.
- Acumuladores y búsqueda del mayor y el menor valor.
- Formato de salida con `iomanip` (`fixed`, `setprecision`, `setw`).

## Notas

- Los nombres de los días están escritos sin tilde (`Miercoles`, `Sabado`) para evitar problemas de codificación en la consola de Windows.
