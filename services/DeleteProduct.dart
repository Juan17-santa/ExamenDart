import 'dart:io';

void DeleteProduct(List<Map<String, dynamic>> products){
  print("========== ELIMINAR PRODUCTO ==========");

  stdout.write("Digite el indice del producto: ");
  int index = int.parse(stdin.readLineSync()!);

  if (index < 0 || index >= products.length || index == false) {
    print("Indice invalido");
    return;
  }
  
  products.removeAt(index);
  print("Producto eliminado exitosamente");
}
