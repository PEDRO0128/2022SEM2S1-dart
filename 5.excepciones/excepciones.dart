import '../3.funciones/funciones.dart';

void main() {

try {
  String elNombre = obtenerNombre("german");
  print(elNombre);
} catch(e) {
  print("se presentó una excepción FormatException = $e");
}on Exception catch (e) {
  print("Se peresnto una excepción = $e");
}catch (e){
  print("se presento un exceción");
}

}

String obtenerNombre(String nombre){
  if (nombre == 'german'){
    throw FormatException("Este nombre esta permitido");
  }
  return 'Mi nombre es $nombre';
}


