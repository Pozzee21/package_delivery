part of 'bloc_planilla_bloc.dart'

    import 'package:equatable/equatable.dart';
import 'package:package_delivery/packages/reparto/model/paquete.dart';

class PlanillaState extends Equatable{
    final List<Paquete> paquetesPlanilla;
    //cantidad de paquetes en la planilla
    final Int cantidadPaq;
    final String idPlanilla;

    PlanillaState([this.idPlanilla,this.paquetesPlanilla,this.cantidadPaq]);
  @override
  List<Object?> get props => [this.paquetesPlanilla,this.cantidadPaq,this.idPlanilla,];

    PlanillaState copywith({String idPlanilla, List<Paquete>paquetesPlanillas, int cantidadPaq}){
        return PlanillaState(
            idPlanilla ?? this.idPlanilla;
            paquetesPlanillas ?? this.paquetesPlanillas;
            cantidadPaq ?? this.cantidadPaq;
        )
    }
}