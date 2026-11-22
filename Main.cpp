#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

int main() {
    const int DIAS = 7;
    string nombres[DIAS] = {"Lunes", "Martes", "Miercoles", "Jueves",
                            "Viernes", "Sabado", "Domingo"};

    // 1. Arreglo de 7 posiciones tipo double (0 = lunes ... 6 = domingo)
    double ventas[DIAS];

    // 2. Pedir las ventas de cada dia
    cout << "===== VENTAS DEL COLMADO DON PEPE =====" << endl;
    for (int i = 0; i < DIAS; i++) {
        do {
            cout << "Ventas del " << nombres[i] << ": RD$ ";
            cin >> ventas[i];
            if (ventas[i] < 0) {
                cout << "  El monto no puede ser negativo. Intente de nuevo." << endl;
            }
        } while (ventas[i] < 0);
    }

    cout << fixed << setprecision(2);

    // 3. Mostrar el listado de ventas registradas
    cout << "\n===== VENTAS DEL COLMADO DON PEPE =====" << endl;
    for (int i = 0; i < DIAS; i++) {
        cout << left << setw(11) << (nombres[i] + ":")
             << "RD$ " << ventas[i] << endl;
    }
    cout << "---------------------------------------" << endl;

    // 4. Calculos: total, promedio, mayor, menor
    double total = 0;
    int posMayor = 0, posMenor = 0;
    for (int i = 0; i < DIAS; i++) {
        total += ventas[i];
        if (ventas[i] > ventas[posMayor]) posMayor = i;
        if (ventas[i] < ventas[posMenor]) posMenor = i;
    }
    double promedio = total / DIAS;

    // Dias que superaron el promedio
    int contador = 0;
    string listaDias = "";
    for (int i = 0; i < DIAS; i++) {
        if (ventas[i] > promedio) {
            if (contador > 0) listaDias += ", ";
            listaDias += nombres[i];
            contador++;
        }
    }

    cout << "Total semanal:   RD$ " << total << endl;
    cout << "Promedio diario: RD$ " << promedio << endl;
    cout << "Mayor venta: " << nombres[posMayor]
         << " (RD$ " << ventas[posMayor] << ")" << endl;
    cout << "Menor venta: " << nombres[posMenor]
         << " (RD$ " << ventas[posMenor] << ")" << endl;
    cout << "Dias sobre el promedio: " << contador;
    if (contador > 0) cout << " -> " << listaDias;
    cout << endl;

    return 0;
}
