import 'package:equatable/equatable.dart';

class Paquete extends Equatable{
  final String id,codigoGuia,bultos,direccion;
  final bool entregado;
  final String? hora,dni,vinculo;

  Paquete(this.id,this.bultos,this.codigoGuia,this.direccion,
      this.entregado,
      this.dni,this.hora,this.vinculo);
  // Paquete copyWith({String? id,String? codigoGuia,String? bultos,String? direccion,bool? entregado,String? hora,String? dni,String? vinculo}){
  //   return Paquete(
  //       id ?? this.id,
  //       bultos?? this.bultos,
  //       codigoGuia?? this.codigoGuia,
  //       direccion?? this.direccion,
  //       entregado?? this.entregado,
  //       dni??this.dni,
  //       hora?? this.hora,
  //       vinculo?? this.vinculo);
  // }

  Paquete.fromJson(Map<String,dynamic>json):
      id=json['id'],
      codigoGuia=json['codigoGuia'],
      bultos=json['bultos'],
      direccion=json['direccion'],
      entregado=json['entregado'],
      hora=json['hora'],
      dni=json['dni'],
      vinculo=json['vinculo'];

  @override
  List<Object?> get props => [];

}
