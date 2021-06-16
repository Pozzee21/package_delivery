import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_delivery/packages/common/bloc/bloc_navigator_bloc.dart' as BlockNavigator;
import 'package:package_delivery/packages/common/bloc/bloc_navigator_bloc.dart';

class MainDrawer extends StatelessWidget{

bool delivery;
String appTitle;
Icon leadingArrow;

List<String> sections=["Cerrar sesion", "Crear Planilla","Ver planillas", "Hoja de ruta"];

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  MainDrawer (bool delivery, BuildContext context){
    this.delivery=delivery;
    BlocProvider.of<NavigatorBloc>(context).add(NavigatorEventPushPage(0));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    leadingArrow = Icon(Icons.arrow_right_rounded);
    Widget body;
    Widget trailingAppBar;

    return BlocBuilder<NavigatorBloc,BlockNavigator.NavigatorState>(
        builder: (context,  state ){
          trailingAppBar = null;
          appTitle = "";
          body = null;
          switch(state.values.last){
            case 0:
              appTitle = "Cerrar sesion";
              if(state.parametro!=null){
                ///body metodo para ....
                break;
              }
              ///bodyy con construccion vacia ?
              break;

            case 1:
              appTitle = "Crear Planilla";
              if(state.parametro!=null){
                ///body metodo para crear planilla
                break;
              }
              ///bodyy con construccion vacia ?
              break;

            case 2:
              appTitle = "Ver planillas";
              if(state.parametro!=null){
                ///body metodo para ....
                break;
              }
              ///bodyy con construccion vacia ?
              break;

            case 3:
              appTitle = "Hoja de ruta";
              if(state.parametro!=null){
                ///body metodo para ....
                break;
              }
              ///bodyy con construccion vacia ?
              break;

            case 99:
              appTitle = "";
              if(state.parametro!=null){
                ///body metodo para ....
                break;
              }
              ///bodyy con construccion vacia ?
              break;

             default:
              appTitle = "";
              if(state.parametro!=null){
                ///body metodo para ....
                break;
              }
              ///bodyy con construccion vacia ?
              break;

          }
          return Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              title: Text(appTitle),
              actions: [trailingAppBar ?? Container()],
            ),
            body: body,
              drawer: Drawer(
                child: ListView(padding: EdgeInsets.zero,
                  children: <Widget>[
                    Padding(
                      padding:   const EdgeInsets.all(16.0),
                      child: Text(
                          sections[3]),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                    child: Text(
                        sections[2]
                    ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                          sections[1]
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                          sections[0]
                      ),
                    ),
                  ],
                ),
              ),
          );


        }
    );
  }



}