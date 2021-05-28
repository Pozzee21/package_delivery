import 'package:equatable/equatable.dart';

class Paquete extends Equatable{

  Paquete(this.bultos,this.codigoGuia,this.direccion, this.dni,this.hora,this.vinculo);

  final String codigoGuia,bultos,direccion,hora,dni,vinculo;

  Paquete.fromJson(Map<String,dynamic>json):
      bultos=json['bultos'],
      vinculo=json['vinculos'],
      hora=json['hora'],
      dni=json['dni'],
      direccion=json['direccion'],
      codigoGuia=json['codigoGuia'];

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
