part of 'bloc_hoja_ruta_bloc.dart';

abstract class HojaRutaEvent extends Equatable {
  const HojaRutaEvent();

  @override
  List<Object> get props => [];

}

class HojaRutaEventCargar extends HojaRutaEvent{
  String idRepartidor;
  HojaRutaEventCargar(this.idRepartidor);
}