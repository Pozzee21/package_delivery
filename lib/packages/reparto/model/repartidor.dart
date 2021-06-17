import 'package:equatable/equatable.dart';

class Repartidor extends Equatable{

  final String id, nombre;

  Repartidor(this.id, this.nombre);

  Repartidor.fromJson(Map<String, dynamic> json):
        id=json['id'].toString(),
        nombre= json['nombre'];


  @override
  List<Object?> get props => [id, nombre];

}