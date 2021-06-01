part of 'bloc_paquete_bloc.dart';

class PaqueteState extends Equatable{
  final Paquete? paqueteActual;

  PaqueteState([this.paqueteActual]);

  @override
  List<Object?> get props => [paqueteActual];

  PaqueteState copyWith({Paquete? paqueteActual}){
    return PaqueteState(paqueteActual ?? this.paqueteActual);
  }
}