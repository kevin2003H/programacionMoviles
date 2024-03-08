List<String> ordenarAlfanumericamente(List<String> lista) {
  lista.sort((a, b) {
    // Comparación alfanumérica utilizando el código ASCII
    for (int i = 0; i < a.length && i < b.length; i++) {
      if (a.codeUnitAt(i) != b.codeUnitAt(i)) {
        return a.codeUnitAt(i) - b.codeUnitAt(i);
      }
    }
    // Si las cadenas son iguales hasta este punto, se compara su longitud
    return a.length - b.length;
  });
  return lista;
}

void main() {
  List<String> lista = ['casa', '25reloj', 'pc', '852hola'];
  List<String> listaOrdenada = ordenarAlfanumericamente(lista);
  print(listaOrdenada); // ['&2top', '021laptop', 'manzana', 'zapato']
}
