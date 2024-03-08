class Persona {
  String nombre;
  int edad;
  String genero;

  Persona(this.nombre, this.edad, this.genero);

  void presentarse() {
    print("Hola, soy $nombre, tengo $edad años y mi genero es $genero.");
  }
}

void main() {
  // Crear una instancia de Persona
  var persona = Persona("kevin", 30, "masculino");

  // Llamar al método presentarse
  persona.presentarse();
}