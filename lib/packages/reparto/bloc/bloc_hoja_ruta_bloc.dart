import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:package_delivery/packages/reparto/bloc/bloc_paquete_bloc.dart';
import 'package:package_delivery/packages/reparto/data/api_calls.dart';
import 'package:package_delivery/packages/reparto/model/hojaRuta.dart';
import 'package:package_delivery/packages/reparto/model/paquete.dart';

part 'bloc_hoja_ruta_event.dart';
part 'bloc_hoja_ruta_state.dart';

class HojaRutaBloc extends Bloc<HojaRutaEvent, HojaRutaState> {
  HojaRutaBloc() : super(HojaRutaState(false));
  Servidor _servidor = Servidor();

  @override
  Stream<HojaRutaState> mapEventToState(
    HojaRutaEvent event,
  ) async* {
    if(event is HojaRutaEventCargar){
      yield state.copyWith(carga: true);

      HojaRuta hoja = await _servidor.getHojaByRepartidor(event.idRepartidor);

      yield state.copyWith(hoja: hoja,carga: false);

    }
  }
}
