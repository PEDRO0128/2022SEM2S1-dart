void main() {
int variable1 = 10;
double variable2 = 1.8;

var variable3 = 10;
var variable4 = 1.8;

num variable5=10;
num variable6=1.8;

// print(variable1);
// print(variable2);
// print(variable2.ceil());//en menor numero que no sea meror a el
// print(variable2.floor());//mayor numero entero que no sea mayor a el
// print(variable2.abs());//Valor absoluto

String texto1 = "El calculo de la edad es ${6 + 4}";
String texto2 = "La suma es iugual a ${variable5 + variable2}";
String texto3 = "Su nombre es" + "German";
String texto4 = "Su nombre es" 'Migle';
String texto5 = texto1 + texto3;
String texto6 = "El valor del tecto 5 es: $texto5";
String texto7 = '''CREATE TABLE table_name ( 
  Column1 datatype,
  Column2 datatype,
  Column3 datatype,
  ...
)''';

String texto8 = 'Texto con signos especiales \n esto es prueba';
// String texto8 = r'Texto con signos especiales \n esto es prueba';

// print(texto1);
// print(texto2);
// print(texto3);
// print(texto4);
// print(texto5);
// print(texto6);
// print(texto7);
// print(texto8);

var lista1 = ["mazda", "suzuki", "kia"];
var lista2 = ["mazda", "suzuki", "kia", 234, true];
List<String> lista3 = ["mazda", "suzuki", "kia"];//define que solo puedem variables de tipo String

lista1.clear(); //borra la lista
var lista4 = ["manzana", ...lista2]; //es un spreadd para indezar valores a una lista ya creada
var lista;
var lista6 = ["uno", ...lista4, ...?lista];//el signo? le indica que la lista se encuentra vasia

var set1 = {"SET1 mazda", "suzuki", "kia", ...lista2}; //tipo set es con {}, que no deja repetir
set1.add("jeep");
set1.add("kia");


// print(lista1); 
// print(lista4); 
// print(lista4.reversed);
// print(lista6); 
print(set1);

var map1 = {'red': 'rojo', 'blue': 'azul'};
print(map1);
map1['green'] = "verde";
print(map1);

//NULL safety
List<String>? lista10 = null;
List<String?> lista11 = ["uno","dos", null];
print(lista10);
print(lista11);








}
