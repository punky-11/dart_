import 'dart:io';
import 'dart:math';
void main() {
 
    Figura figura;
    
      print("1. Crear un cuadrado");
      print("2. Crear un círculo");
      print("3. Salir");
      var opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:{
        print("Ingrese el lado del cuadrado: ");
        var lado = double.parse(stdin.readLineSync()!);
        figura = Cuadrado(lado);
        print("Cuadrado creado.");
        print("Perímetro: ${figura.perimetro()}");
        print("Área: ${figura.area()}");
      }
        
        break;
      case 2:{
        print("Ingrese el radio del círculo: ");
        var radio = double.parse(stdin.readLineSync()!);
        figura = Circulo(radio);
        print("Círculo creado.");
        print("Perímetro: ${figura.perimetro()}");
        print("Área: ${figura.area()}");
      }
       break;
      default:{
        print("Opción inválida. Intente nuevamente.");
        }
    }
}



abstract class Figura{
  double area();
  double perimetro();
}
//clases que implementan la interfaz
//inplements es para implementar una interfaz . y llama la clase
// figura, y se implementa el metodo area y perimetro de la interfaz (figura)
class Circulo implements Figura{
  //atributos
  double radio;
  Circulo(this.radio);

//metodos
 double perimetro() {
  return 2 * pi * radio;
  }

  double area() {
    return pi * radio * radio;
  }
} 

//
class Cuadrado implements Figura{
  double lado;
  Cuadrado(this.lado);

double perimetro() {
  return lado * 4;
}
double area() {
  return lado * lado;
}
}


//Si se hace el llamado a un método abstracto en un objeto en Dart, también 
//obtendrás un error en tiempo de compilación. Los métodos abstractos deben 
//ser implementados en las subclases antes de poder ser llamados sin 
//generar una excepción.