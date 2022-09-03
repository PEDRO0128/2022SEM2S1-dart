void main() {
Persona objetoPersona = Persona(nombre: "pedro", apellido: "acosta", edad: 43);

Padre objetoPadre = Padre(2);
print(objetoPadre.apellido);

var objetoTaxi = Taxi();
objetoTaxi.placa= "FJS666";
print(objetoTaxi.tipoVehiculo());
print(objetoTaxi.placa);

if (objetoTaxi is Taxi){
  print("si es Taxi");
}else {
  print("no es taxi");
}

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

abstract class Vehiculo {
  String? placa;

  bool vehuculoEncendido();
}

class Taxi extends Vehiculo with Terrestre {
  @override
  bool vehuculoEncendido() {
    return true;
  }
}
    
mixin Terrestre {
  int? llantas;
  int? kilometraje;

  tipoVehiculo() {
    return 'terrestre';
  }
}

mixin Acuatico {
  int? motores;
  tipoVehiculo(){
    return "acuatico";
  }
}