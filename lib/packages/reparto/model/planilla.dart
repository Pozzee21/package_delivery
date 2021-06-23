
import 'package:equatable/equatable.dart';
import 'package:package_delivery/packages/reparto/model/paquete.dart';

class Planilla  extends Equatable{
  final String id;
  final String tipo;
  final List<Paquete>paquetesPlanilla;
  final int cantidadPaq;
}