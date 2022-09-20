oid main() {
  ejercicio1();
  ejercicio2();
  ejercicio3('Anita Patina');
  ejercicio4();
  ejercicio5();
}

void ejercicio1() {
 
  double promedio;
  var lista = [40, 8, 58, 22, 99, 35];
  print(lista);
  lista.sort();
  var sum = lista.reduce((a,b)=> a+b);
  promedio = sum/lista.length;
  print ('La lista Ordenada es: $lista\nEl Numero Mayor es: ');
  print(lista.last);
  print('El Numero Menor es: ');
  print(lista.first);
  print('El Numero Promedio es: $sum');
}

void ejercicio2() {
  

  final lists = [ [1, 1, 2, 3, 5, 8, 13, 21, 10, 55, 89], 
                 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]];
  
  final listafinal = lists.fold<Set>(lists.first.toSet(), (a,b) => a.intersection(b.toSet()));
  print ('Estas son las listas de numeros \n $lists');
  print ('Estos elementos son los comunes $listafinal');
}

void ejercicio3(String palabra) {
  String aux = palabra.split(' ').join('').toLowerCase();
  print(aux == aux.split('').reversed.join('') ? 'Es palíndromo': 'No es palíndromo');
}

void ejercicio4() {
 
  List <int> lista = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  print('La lista inicial es: $lista\nLos elementos Pares son: ');
  print(lista.where((numero) => numero % 2 == 0));
}

void ejercicio5() {
    
  Persona nombre = Persona('Juliana', 'Gongora', 29);
  Artista artis = Artista('Arte Conteporaneo', 'pintor', 74);
  Ingeniero ing = Ingeniero('de Sistemas', 'Microsoft', 40);
  Doctor doc = Doctor('Cardiologo', 'Fundación Clínica Shaio', 'Bogotá');
  Boxeador deport = Boxeador(50, 44, 6, 'Mike', 'Tyson', 56, 'Boxeador', 'Estados Unidos', 'Iron Mike');
  
  print('${nombre.imprimir()}\n');
  print('${artis.imprimirArtista()}\n${artis.dibujar()}\n');
  print('${ing.imprimirIngeniero()}\n${ing.dibujar()}\n${ing.leer()}\n');
  print('${doc.imprimirDoctor()}\n${doc.leer()}\n${doc.ejercitarse()}\n');
  print('${deport.imprimirBoxeador()}\n${deport.ejercitarse()}\n${deport.boxear()}\n');
}

class Persona {
  String nombre;
  String apellido;
  int edad;
  
  Persona(this.nombre, this.apellido, this.edad);
  
  String imprimir() {
    return 'Mi nombre es $nombre $apellido y tengo $edad años.';
  }
}

class Artista extends Persona with Dibujar {
  String tipoArte;
  String vocacion;
  int experiencia;
  
  Artista(this.tipoArte, this.vocacion, this.experiencia): super('Fernando', 'Botero', 90);
  
  String imprimirArtista() {
    return '${imprimir()}\nSoy $vocacion por $experiencia años y mi tipo de arte es el $tipoArte.';
  }
}

class Ingeniero extends Persona with Dibujar, Leer {
  String area;
  String empresa;
  int experiencia;
  
  Ingeniero(this.area, this.empresa, this.experiencia): super('Bill', 'Gates', 66);
  
  String imprimirIngeniero() {
    return '${imprimir()}\nSoy un ingeniero en $area por $experiencia años y trabajo en $empresa.';
  }
}

class Doctor extends Persona with Leer, Ejercitarse {
  String ocupacion;
  String institucion;
  String residencia;
  
  Doctor(this.ocupacion, this.institucion, this.residencia): super('Juan Jose ', 'Bermudez', 29);
  
  String imprimirDoctor() {
    return '${imprimir()}\nSoy $ocupacion en el hospital $institucion de $residencia';
  }
}

class Atleta extends Persona {
  String deporte;
  String nacionalidad;
  String apodo;
  
  Atleta(this.deporte, this.nacionalidad, this.apodo, String nombre, String apellido, int edad): super(nombre, apellido, edad);
  
  String imprimirAtleta() {
    return '${imprimir()}\nSoy un $deporte de $nacionalidad y me apodan $apodo.';
  }
}

class Boxeador extends Atleta with Ejercitarse, Boxear {
  int victorias;
  int kos;
  int derrotas;
  
  Boxeador(this.victorias, this.kos, this.derrotas, String nombre, String apellido, int edad, String deporte, String nacionalidad, String apodo): super(deporte, nacionalidad, apodo, nombre, apellido, edad);
  
  String imprimirBoxeador() {
    return '${imprimirAtleta()}\nJuego: $victorias peleas, $kos de ellas por KO y perdi $derrotas peleas.';
  }
}

mixin Dibujar {
  String? papel;
  String? utensilios;
  int? dedicacion;
  
  String dibujar() {
    return 'Estoy dibujando.';
  }
}

mixin Leer {
  String? libro;
  String? autor;
  int? dedicacion;
  
  String leer() {
    return 'Estoy leyendo.';
  }
}

mixin Ejercitarse {
  String? dias;
  String? horario;
  int? dedicacion;
  
  String ejercitarse() {
    return 'Estoy haciendo ejercicio.';
  }
}

mixin Boxear {
  String? oponente;
  String? fecha;
  String? hora;
  
  String boxear() {
    return 'Estoy boxeando.';
  }
}