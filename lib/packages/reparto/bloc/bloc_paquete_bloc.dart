import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_delivery/packages/reparto/data/api_calls.dart';
import 'package:package_delivery/packages/reparto/model/paquete.dart';

part 'bloc_paquete_state.dart';

part 'bloc_paquete_event.dart';

class PaqueteBloc extends  Bloc<PaqueteEvent,PaqueteState>{

  PaqueteBloc() : super(PaqueteState());
  Servidor _servidor = Servidor();

  @override
  Stream<PaqueteState> mapEventToState(PaqueteEvent event) async*{
    if(event is PaqueteEventEntregar){
      Paquete paquete = await _servidor.entregarPaquete(event.paqueteEntregar);
      yield state.copyWith(paqueteActual: paquete);


    }else if (event is PaqueteEventBuscarPaquete){
      Paquete paquete = await _servidor.getPaqueteById(event.id);
      yield state.copyWith(paqueteActual: paquete);

    }
  }



}