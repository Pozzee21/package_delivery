part of 'bloc_hoja_ruta_bloc.dart';

class HojaRutaState extends Equatable {
  final HojaRuta? hoja;
  final bool carga;

  HojaRutaState(this.carga, [this.hoja]);

  @override
  List<Object?> get props => [hoja, carga];

  HojaRutaState copyWith({HojaRuta? hoja,
    required bool carga}){
    return HojaRutaState(
        carga = carga,
        hoja ?? this.hoja);
  }
}


