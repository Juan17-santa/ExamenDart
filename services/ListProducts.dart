void ListProduct(List<Map<String, dynamic>>products) {
  if(products.isEmpty) {
    print("No hay productos registrados");
    return;
  }

  print("========== LISTA DE PRODUCTOS ==========");

  for (int i = 1; i < products.length; i++) {
    print("producto #$i");
    print("Nombre del producto: ${products[i]['nombre']}");
    print("precio del producto: ${products[i]['precio']}");
    print("cantidad del producto: ${products[i]['cantidad']}");
    print("");
  }
}