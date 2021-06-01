import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:package_delivery/packages/reparto/model/Paquete.dart';

class Servidor {

  final ipServer = "eeee";


/**
 * Llamadas referentes a paquetes
 */

Future<Paquete> getPaqueteById(String id) async{
  String endpoint = "/paquete";
  String params = "?id="+id;

  Paquete paquete = new Paquete(id,"2", "AA0001", "Pje Gutierrez 1100",false, null, null, null);
  return paquete;
}

Future<Paquete> entregarPaquete(Paquete paquete) async{
  String endpoint = "/paquete/entregar";
  String params = "?id="+paquete.id;
  DateTime _now = DateTime.now();
  Paquete newPaquete = new Paquete(paquete.id,
      paquete.bultos,
      paquete.codigoGuia,
      paquete.direccion,
      true, "40101299", _now.hour.toString()+"/"+_now.minute.toString(), "Hijo");

  EasyLoading.showToast("Paquete entregado con éxito!");
  return newPaquete;

}



}