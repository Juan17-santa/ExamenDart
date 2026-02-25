import 'dart:io';

import 'services/AddProduct.dart';
import 'services/DeleteProduct.dart';
import 'services/ListProducts.dart';
import 'services/UpdateProduct.dart';
void main() {
  List<Map<String, dynamic>> products = [];
  bool salir = false;

  while (!salir) {
    print("\n========== MENU GESTION DE PRODUCTOS ==========");
    print("1. Agregar producto");
    print("2. Listar productos");
    print("3. Actualizar producto");
    print("4. Eliminar producto");
    print("5. Salir");

    stdout.write("Seleccione una opcion: ");
    int opcion = int.parse(stdin.readLineSync()!);
    print("");

    switch (opcion) {
      case 1:
        AddProduct(products);
        break;
      case 2:
        ListProduct(products);
        break;
      case 3:
        UpdateProduct(products);
        break;
      case 4:
        DeleteProduct(products);
        break;
      case 5:
        print("Saliendo del programa...");
        salir = true;
        break;

      default:
        print("Opción Invalida");
    }
  }
}
