void main() {

print (obtenerNombre("German"));
print(obtenerNombreApellido("Pedro", "Acosta"));
print(obtenerNombreApellidoParameter(apellido: "herrera"));

}

String obtenerNombre(String valor){
  return 'Min combre es $valor';
}
String obtenerNombreApellido(String nombre, String apellido){
  return 'mi nombre es $nombre $apellido';
}
String obtenerNombreApellidoParameter(
  {String? nombre, required String apellido, int edad = 0}) {
    return 'Mi nombre es $nombre $apellido';
  }

  String obtenerNombreApellidoDos (String nombre, [String? apellido]){
    return 'Mi nombre es $nombre $apellido';
  }

  var miFuncionAnonima = (String valor){
    return "El valor es $valor";
  };

  abstract class Vehiculo {
    String? placa;

    bool vehuculoEncendido();
  }

  class Taxi extends Vehiculo {
  @override
  bool vehuculoEncendido() {
    // TODO: implement vehuculoEncendido
    throw UnimplementedError();
  }
    
    
  }