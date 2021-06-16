import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_delivery/packages/reparto/bloc/bloc_paquete_bloc.dart';
import 'package:package_delivery/packages/reparto/model/paquete.dart';

class PaqueteEspecifico extends StatelessWidget{
  String? id;

  PaqueteEspecifico({Key? key,@required this.id}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    Color _color = Colors.grey;
    String _estado = "";
    bool _showButton = true;
    return BlocListener<PaqueteBloc, PaqueteState>(
      listener: (context, state){
        if(state.paqueteActual!.entregado){
          _color = Colors.green;
          _estado = "Entregado";
          _showButton = false;
        }else{
          _color = Colors.red;
          _estado = "No entregado";
          _showButton = true;
        }

      },
      child: BlocBuilder<PaqueteBloc, PaqueteState>(
          builder: (context, state){
            if(state.paqueteActual==null){
              BlocProvider.of<PaqueteBloc>(context).add(PaqueteEventBuscarPaquete(id!));
              return Container(child: Text("Obteniendo datos.."),);
            }else{
              Paquete paquete = state.paqueteActual!;
              return Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Center(child: Text("Datos del paquete #"+paquete.id,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),),
                        Row(
                          children: [
                            Expanded(child:
                            Text("Identificación",style: TextStyle(color: Colors.grey),),
                            ),
                            Expanded(child:
                            Text("Pantilla",style: TextStyle(color: Colors.grey),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child:
                            Text(paquete.id),
                            ),
                            Expanded(
                              child:
                              Text(paquete.codigoGuia),
                            )
                          ],
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Expanded(child: Text("Dirección",style: TextStyle(color: Colors.grey),)),
                            Expanded(child: Text("Bultos", style: TextStyle(color: Colors.grey),))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Text(paquete.direccion)),
                            Expanded(child: Text(paquete.bultos),)
                          ],
                        ),
                        SizedBox(height: 20.0,),
                        Center(
                          child: Text("Estado",style: TextStyle(color:Colors.grey, fontSize: 16),),
                        ),
                        Center(
                          child: Text(_estado,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: _color),),
                        ),
                        SizedBox(height: 20.0,),
                        _showButton?
                        ElevatedButton(onPressed: ()=> BlocProvider.of<PaqueteBloc>(context).add(PaqueteEventEntregar(paquete)), child: Text("Entregar"))
                            :SizedBox(width: 0,)
                      ],
                    ),
                  ),
                ),
              );

            }
          }),
    );
  }

}