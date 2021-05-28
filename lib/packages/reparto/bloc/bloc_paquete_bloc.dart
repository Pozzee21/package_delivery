import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_delivery/packages/reparto/model/Paquete.dart';

part 'bloc_paquete_state.dart';

part 'bloc_paquete_event.dart';

class PaqueteBloc extends  Bloc<PaqueteEvent,PaqueteState>{

  PaqueteBloc() : super(PaqueteState());

  @override
  Stream<PaqueteState> mapEventToState(PaqueteEvent event) async*{
    if(event is PaqueteEventEntregar){
      yield state.CopyWith(paqueteEntregado: new Paquete('bultos', 'codigoGuia', 'direccion', dni, hora, vinculo));
    }
  }


}