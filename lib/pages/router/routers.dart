import 'package:flutter/material.dart';

import '../Home/HomePages.dart';
import '../Login/LoginPages.dart';
import '../Login/RecuparContraseña.dart';
import 'construcion_page.dart';

Map<String, WidgetBuilder> getRutas() {
  return <String, WidgetBuilder>{
    'login': (BuildContext context) => LoginPages(),
    'RecuperarContrasena': (BuildContext context) => RecuperarContrasena(),
    'HomePages': (BuildContext context) => HomePages(),
  };
}

Map<String, WidgetBuilder> getNoRutas() {
  return <String, WidgetBuilder>{
    'construccion': (BuildContext context) => Construccion(),
  };
}
