class producto{
  String nombre;
  double precio;
  int cantidadDeInventario;  
  
  producto(this.nombre,this.precio,this.cantidadDeInventario);
  
  
  String get Nombre => nombre;
  
  set Nombre(String value){
    nombre = value;
  }
  
  double get Precio => precio;
  
  set Precio(double value){
    precio = value;
  }
  
  int get CantidadDeInventario => cantidadDeInventario;
  
  set CantidadDeInventario(int value){
    cantidadDeInventario = value;
    
  }
  
  void comprar(int cantidad){
    if(cantidad > 0){
      cantidadDeInventario += cantidad;
      print('$cantidad unidades de $nombre han sidi añadidas al inventario.');
    }else{
      print('la cantidad de compra debe ser mayor a cero.');
    }
  }
   
  void vender (int cantidad){
    if (cantidad > 0 && cantidad <= cantidadDeInventario){
      cantidadDeInventario = cantidad;
      print('$cantidad uniades de $nombre han sido vendidas.');
    }else if (cantidad <=0){
      print('la cantidad de venta debe ser mayor que cero.');
    }else{
      print('no hay suficientes unidades de $nombre ene l inventario');
    }
  }
  
 void mostrarDetalles() {
    print('Detalles del Producto:');
    print('Nombre: $nombre');
    print('Precio: \$$precio');
    print('Cantidad en Inventario: $cantidadDeInventario unidades');
  }
}

void main() {
  // Crear un objeto de la clase Producto
  var Producto = producto('Camiseta', 15.300, 50);

  // Mostrar detalles del producto
  Producto.mostrarDetalles();

  // Realizar operaciones de compra y venta
  Producto.comprar(10);
  Producto.vender(5);

  // Mostrar detalles actualizados
  Producto.mostrarDetalles();
    
  
}
