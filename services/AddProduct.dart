import 'dart:io';

void AddProduct(List<Map<String, dynamic>> products) {
  print("========== AGREGAR PRODUCTOS ==========");
  stdout.write("Ingrese el nombre del producto: ");
  String nombre = stdin.readLineSync()!;

  stdout.write("Digite el precio del producto: ");
  double? precio = double.tryParse(stdin.readLineSync()!);

  stdout.write("Digite la cantidad disponible: ");
  double? cantidad = double.tryParse(stdin.readLineSync()!);

  if (nombre.isEmpty || precio == null || cantidad == null) {
    print("Todos los campos son obligatorios");
    return;
  }

  if (precio < 0 || cantidad < 0) {
    print("El precio y la cantidad no pueden ser negativos");
    return;
  }

  products.add({
    'nombre': nombre, 
    'precio': precio, 
    'cantidad': cantidad
    });

  print("Producto agregado exitosamente");
}
