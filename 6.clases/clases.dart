void main() {
Persona objetoPersona = 
    Persona(nombre: "pedro", apellido: "acosta", edad: 43);
    Padre objetoPadre = Padre(2);
print(objetoPadre.apellido);

}

class Persona {
  String nombre;
  String? apellido;
  int? edad;

  Persona({required this.nombre, required this.apellido, required this.edad});
}

class Padre extends Persona {
  int hijos;

  Padre(this.hijos) : super(nombre: "pedro", apellido: "acosta", edad: 43);
}
