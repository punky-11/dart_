import 'dart:io';
import 'dart:math';

void main() {
  
   // Crear objeto de tipo EmpleadoFijo
  String nombreEmpleadoFijo = 'Juan';
  int edadEmpleadoFijo = 30;
  double salarioBasico = 2000.0;

  EmpleadoFijo empleadoFijo =
      EmpleadoFijo(nombreEmpleadoFijo, edadEmpleadoFijo, salarioBasico);

  // Crear objeto de tipo EmpleadoTemporal
  String nombreEmpleadoTemporal = 'María';
  int edadEmpleadoTemporal = 25;
  double valorHoraTrabajada = 15.0;
  int horasExtrasTrabajadas = 10;

  EmpleadoTemporal empleadoTemporal = EmpleadoTemporal(
      nombreEmpleadoTemporal, edadEmpleadoTemporal, valorHoraTrabajada, horasExtrasTrabajadas);

  // Visualizar la información de los empleados
  print('Información del empleado fijo:');
  empleadoFijo.vissualizar();

  print('\nInformación del empleado temporal:');
  empleadoTemporal.vissualizar();
}


//clase abstracta

abstract class Empleado{
  String nombre;
  int edad;

  Empleado(this.nombre, this.edad);
//metodo abstracto

void vissualizar();
}


//subclases clase o clase hijo
class EmpleadoFijo extends Empleado{

double salarioBasico;
//constructor
EmpleadoFijo(String nombre, int edad, this.salarioBasico) : super(nombre, edad);


@override
void vissualizar() {
  print("Nombre: $nombre");
  print("Edad: $edad");
  print("Salario: $salarioBasico");

}
}

//subclases clase o clase hijo
class EmpleadoTemporal extends Empleado{

  double valorHoraTrabajada;
  int horasExtrasTrabajadas;
//constructor
  EmpleadoTemporal(String nombre, int edad, this.valorHoraTrabajada,
      this.horasExtrasTrabajadas)
      : super(nombre, edad);

@override
void vissualizar() {
  print("Nombre: $nombre");
  print("Edad: $edad");
  print("Salario: $valorHoraTrabajada");
  print("horas extras: $horasExtrasTrabajadas");
}

}
