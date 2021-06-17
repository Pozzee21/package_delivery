import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:package_delivery/packages/reparto/bloc/bloc_hoja_ruta_bloc.dart';
import 'package:package_delivery/packages/reparto/model/hojaRuta.dart';
import 'package:package_delivery/packages/reparto/model/paquete.dart';

class HojaRutaScreen extends StatelessWidget{
  String? idRepartidor;
  HojaRuta? hojaRuta;

  HojaRutaScreen({Key? key, @required this.idRepartidor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HojaRutaBloc>(context).add(HojaRutaEventCargar(idRepartidor!));
    return BlocListener<HojaRutaBloc,HojaRutaState>(
      listener: (context, state) {
        if (state.carga) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss();
        }
      },
      child: BlocBuilder<HojaRutaBloc, HojaRutaState>(
        builder: (context, state) {
          hojaRuta = state.hoja;
          if(hojaRuta == null){
            return Container();
          }else{
            return Container(
              child: Column(
                children: [
                  Center(
                      child:
                      Text(hojaRuta!.fecha +"-"+ hojaRuta!.nombre)
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: hojaRuta!.paquetes == null ? 1 : hojaRuta!.paquetes.length +1,
                    itemBuilder: (context, index) {
                      if( index == 0){
                        return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Paquete",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text("Estado",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),)
                        );
                      }
                      index -=1;
                      return _createRow(hojaRuta!.paquetes[index], context, index);

                    },)
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _createRow(Paquete p, BuildContext context, int index){
    return Card(
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal:8.0,vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(p.id),
            p.entregado? Text("Entregado"):
                Text("No entregado"),
          ],
        ),
    ));
  }
}