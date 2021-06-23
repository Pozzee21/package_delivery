part of 'bloc_planilla_bloc.dart';

import 'package:equatable/equatable.dart';

abstract class PlanillaEvent extends  Equatable{
  const PlanillaEvent();
  @override
  List<Object> get props=> [];
}
class PlanillaEventInit extends PlanillaEvent{
final String tipo;
PlanillaEventInit(this.tipo);
}

class PlanillaEventClear extends PlanillaEvent{

}
class PlanillaEventGetPaq extends PlanillaEvent{
}

class PlanillaEventAddPaq extends PlanillaEvent{
  final String idPlanilla;
  //final String cantidadPaq ?? como es String o porque ?
  PlanillaEvent(this.idPlanilla,this.paquetePlanilla);
}

class PlanillaEvent extends PlanillaEvent{

}
class PlanillaEventSetTipo extends PlanillaEvent{

}