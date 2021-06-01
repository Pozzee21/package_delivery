part of 'bloc_paquete_bloc.dart';
abstract class PaqueteEvent extends Equatable{
 const PaqueteEvent();
 @override
 List<Object> get props => [];

}

 class PaqueteEventBuscarPaquete extends PaqueteEvent{
  String id;
  PaqueteEventBuscarPaquete(this.id);
 }
 class PaqueteEventEntregar extends PaqueteEvent{
  Paquete paqueteEntregar;
  PaqueteEventEntregar(this.paqueteEntregar);
 }

