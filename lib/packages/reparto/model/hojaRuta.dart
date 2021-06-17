import 'package:equatable/equatable.dart';
import 'package:package_delivery/packages/reparto/model/paquete.dart';

class HojaRuta extends Equatable{
  final String id;
  final List<Paquete> paquetes;
  final String fecha;
  final String nombre;

  HojaRuta( this.id, this.paquetes,this.nombre,this.fecha);

  HojaRuta.fromJson(Map<String, dynamic> json):
      id= json['id'].toString(),
      fecha= json['fecha'],
      nombre= json['nombre'],
      paquetes= json['paquetes'];


  @override
  List<Object?> get props => [id,paquetes,fecha,nombre];


}