import 'dart:io';
import 'dart:math';

void main() {
  
    Empleado empleado;
    
      print("1. Crear un empleado fijo");
      print("2. Crear un empleado temporal");
      print("3. Salir");
      var opcion = int.parse(stdin.readLineSync()!);

switch (opcion) {
  case 1:{
    print("Ingrese el salario básico mensual: ");
    var salarioBasico = double.parse(stdin.readLineSync()!);
    print("Ingrese la bonificación adicional: ");
    var bonificacionAdicional = double.parse(stdin.readLineSync()!);
    empleado = EmpleadoFijo(salarioBasico, bonificacionAdicional);
    print("Empleado fijo creado.");
    print("Salario: ${empleado.calcularSalario()}");
  }
    
    break;
    case 2:{
       print("Ingrese el salario básico mensual: ");
        var salarioBasico = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor por hora trabajada: ");
        var valorHoraTrabajada = double.parse(stdin.readLineSync()!);
        print("Ingrese la cantidad de horas extras trabajadas: ");
        var horasExtrasTrabajadas = int.parse(stdin.readLineSync()!);
        empleado = EmpleadoTemporal(
            salarioBasico, valorHoraTrabajada, horasExtrasTrabajadas);
        print("Empleado temporal creado.");
        print("Salario: ${empleado.calcularSalario()}");
    }
    break;
  default:{
    print("Opción inválida. Intente nuevamente.");
  }
}


    }


//clase abstracta
abstract class Empleado{
  double salarioBasico;

  Empleado(this.salarioBasico);

//metodo abstracto
double calcularSalario();
}


//subclases clase o clase hijo
class EmpleadoFijo extends Empleado{

  double bonificacionAdicional;

  //constructor
  EmpleadoFijo(double salarioBasico, this.bonificacionAdicional)
      : super(salarioBasico);

  double calcularSalario() {
    return salarioBasico + bonificacionAdicional;
  }
}



class EmpleadoTemporal extends Empleado{

double valorHoraTrabajada;
  int horasExtrasTrabajadas;
  
  //constructor
  EmpleadoTemporal(double salarioBasico, this.valorHoraTrabajada,
      this.horasExtrasTrabajadas)
      : super(salarioBasico);

  double calcularSalario() {
    return salarioBasico + (valorHoraTrabajada * horasExtrasTrabajadas);
  }

}
