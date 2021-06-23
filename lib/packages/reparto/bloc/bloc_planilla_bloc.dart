
import 'package:package_delivery/packages/reparto/data/api_calls.dart';

class PlanillaBloc extends Bloc<PlanillaEvent, PlanillaState>{
  PlanillaBloc() :  super (PlanillaState());
  Servidor  _servidor= Servidor();

  @override
  Stream<PlanillaState>  mapEventToState(PlanillaEvent event)async*{
    if(event is PlanillaEvent){

    }
  }
}