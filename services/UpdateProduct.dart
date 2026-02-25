import 'dart:io';

void actualizarProducto(List<Map<String, String>> productos) {
  print("========== ACTUALIZAR PRODUCTO ==========");

  stdout.write("Digite el índice del producto: ");
  int index = int.parse(stdin.readLineSync()!);

  if (index < 0 || index >= productos.length || index == false) {
    print("indice invalido");
    return;
  }

  print("\nProducto actual:");
  print("Nombre: ${productos[index]['nombre']}");
  print("Precio: ${productos[index]['precio']}");
  print("Cantidad: ${productos[index]['cantidad']}");

  stdout.write("Nuevo nombre: ");
  String nombre = stdin.readLineSync()!;

  stdout.write("Nuevo precio: ");
  String precio = stdin.readLineSync()!;

  stdout.write("Nueva cantidad: ");
  String cantidad = stdin.readLineSync()!;

  if (nombre.isNotEmpty) {
    productos[index]['nombre'] = nombre;
  }

  if (precio.isNotEmpty) {
    productos[index]['precio'] = precio;
  }

  if (cantidad.isNotEmpty) {
    productos[index]['cantidad'] = cantidad;
  }

  print("\nProducto actualizado correctamente");
}