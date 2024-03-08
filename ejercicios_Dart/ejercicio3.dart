 bool esPalindromo(String texto) {
  // Convertir todo a minúsculas y eliminar los espacios en blanco
  texto = texto.toLowerCase().replaceAll(' ', '');

  // Verificar si la cadena es igual a su reverso
  return texto == texto.split('').reversed.join('');
}

void main() {
  String texto1 = "perro";

  print("$texto1 es palíndromo: ${esPalindromo(texto1)}"); 
  
}
