// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

import '../../pages/Widget/notificationService.dart';


class UsuariosFromProvider extends ChangeNotifier {
  GlobalKey<FormState> fromkey = GlobalKey<FormState>();

  String id = '';
  String documento = '';
  String nombre = '';
  String direccion = '';
  String barrio = '';
  String sedep = '';
  String telefono = '';
  String celular = '';
  String ciudad = '';
  String correo = '';
  String contrasena = '';
  String confirmaContrasena = '';

  String rol = '';
  String estado = '';
  String cambioPasword = '';

  validaDatosPersonales(BuildContext context) {
    print(nombre);
    if (nombre.isEmpty) {
      NotificationService.showFlushbarError('Debe ingresar un Nombre', context);
      return false;
    } else {
      if (!RegExp(r'^[a-zA-Z]+( [a-zA-Z]+)+$').hasMatch(nombre)) {
        NotificationService.showFlushbarError(
            'El nombre debe contener al menos dos palabras', context);
        return false;
      }
    }
    if (documento.isEmpty) {
      NotificationService.showFlushbarError(
          'Debe ingresar un Documento', context);
      return false;
    } else {
      if (!RegExp(r'^\d{6,10}$').hasMatch(documento)) {
        NotificationService.showFlushbarError(
            'El campo debe contener entre 6 y 10 caracteres numéricos.',
            context);
        return false;
      }
    }
    if (celular.isEmpty) {
      NotificationService.showFlushbarError(
          'Debe ingresar un Celular', context);
      return false;
    } else {
      if (!RegExp(r'^\d{10}$').hasMatch(celular)) {
        NotificationService.showFlushbarError(
            'El numero de Celular debe contener exactamente diez dígitos',
            context);
        return false;
      }
    }
    if (correo.isEmpty) {
      NotificationService.showFlushbarError('Debe ingresar un Correo', context);
      return false;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(correo)) {
      NotificationService.showFlushbarError(
          'Ingrese un correo electrónico válido', context);
      return false;
    }
    return true;
  }

  validaDatosUbicacion(BuildContext context) {
    if (direccion.isEmpty) {
      NotificationService.showFlushbarError(
          'Debe ingresar una dirección', context);
      return false;
    }

    if (ciudad.isEmpty) {
      NotificationService.showFlushbarError(
          'Debe seleccionar una ciudad', context);
      return false;
    }

    if (barrio.isEmpty) {
      NotificationService.showFlushbarError(
          'Debe seleccionar un barrio', context);
      return false;
    }

    return true;
  }

  validaContrasena(BuildContext context) {
    if (contrasena == confirmaContrasena) {
      if (RegExp(r'^\d{8,}$').hasMatch(contrasena)) {
        return true;
      } else {
        print('ssssssssssssssssssss');
        NotificationService.showFlushbarError(
            'Verificar si la contraseña tiene al menos 8 caracteres alfanuméricos',
            context);
        return false;
      }
    } else {
      NotificationService.showFlushbarError(
          'Las contraseñas no son iguales', context);
      return false;
    }
  }

  validateFrom() {
    if (fromkey.currentState!.validate()) {
      print('from valid ... login');

      return true;
    } else {
      print('from not valid');
      return false;
    }
  }
}
