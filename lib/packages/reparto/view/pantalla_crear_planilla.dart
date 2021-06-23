import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_delivery/packages/reparto/model/planilla.dart';

class CrearPlanilla extends StatelessWidget {
  List <String> tipos=[];
  List <String> idPaquete=[];
  int cantidad=0;
  String codigoPlanilla="";
  BuildContext _context;


  CrearPlanilla({key key, @required this.codigoPlanilla}):super (key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _context=context;
    BlocProvider.of<PlanillaBloc>(context).add(NuevaPlanillaInit())
    //nuevaplanilla init va a cargar el listado de tipos
    return BlocListener<PlanillaEvent, PlanillaState>(
    child: BlocBuilder<PlanillaEvent,PlanillaState>(
      builder: (context,state){
        Easyloading.dissmis();
        return Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(children: [
                _crearVista(contex,idPaquete,state),
                FloatingActionButton.extended(
                    onPressed: (){
                      _cargarNuevaPlanilla(context);
                    },
                    icon: const Icon(Icons.save_alt),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    backgroundColor: Theme.of(context).accentColor,
                    label: const Text('Guardar'
                );
              ],
            ),
            ),
            ),
        );
      },
    ),
    );


  }

  _crearVista(Context context,String idPaquete,PlanillaState state){

    return "cargar  la vista en blanco"
  }
  _cargarNuevaPlanilla(Context context){

    return "guardar planilla solo si se cargo algun item "
  }

}