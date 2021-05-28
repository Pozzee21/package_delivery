part of 'bloc_paquete_bloc.dart';
class PaqueteState extends Equatable{
  final Paquete paqueteEntregado;

  PaqueteState([this.paqueteEntregado]);

  @override
  List<Object> get props => [paqueteEntregado];

  PaqueteState copyWith({Paquete paqueteEntregado}){
    return PaqueteState(paqueteEntregado ?? this.paqueteEntregado);
  }
}