// ignore_for_file: file_names

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class NotificationService {
  static GlobalKey<ScaffoldMessengerState> msnKey =
      new GlobalKey<ScaffoldMessengerState>();
  static showFlushbarError(String msn, BuildContext context) {
    return Flushbar(
      positionOffset: 10,
      title: 'Error',
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      titleColor: Colors.black,
      messageColor: Colors.black,
      message: msn,
      icon: const Icon(
        Icons.error_outline,
        size: 40,
        color: Color(0xffbf001e),
      ),
      backgroundColor: Colors.white,
      boxShadows: const [
        BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 5)
      ],
      margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 50),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      textDirection: Directionality.of(context),
      borderRadius: BorderRadius.circular(10),
      isDismissible: true,
      // onTap: (flushbar) {
      //   Navigator.pop(context);
      // },
      duration: const Duration(seconds: 5),
      leftBarIndicatorColor: Color(0xffbf001e),
    )..show(context);
  }

  static showFlushbarSuccess(String msn, BuildContext context) {
    return Flushbar(
      positionOffset: 5,
      title: 'Exito',
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      titleColor: Colors.black,
      messageColor: Colors.black,
      message: msn,
      icon: const Icon(
        Icons.check_circle_outline_outlined,
        size: 40,
        color: Colors.green,
      ),
      backgroundColor: Colors.white,
      boxShadows: const [
        BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 5)
      ],
      margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 50),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      textDirection: Directionality.of(context),
      borderRadius: BorderRadius.circular(12),
      duration: const Duration(seconds: 5),
      leftBarIndicatorColor: Colors.green,
    )..show(context);
  }

  static showFlushbar(String msn, BuildContext context) {
    return Flushbar(
      positionOffset: 5,
      title: 'Exito',
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      titleColor: Colors.black,
      messageColor: Colors.black,
      message: msn,
      icon: const Icon(
        Icons.check_circle_outline_outlined,
        size: 40,
        color: Colors.green,
      ),
      backgroundColor: Colors.white,
      boxShadows: [
        const BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 5)
      ],
      margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 50),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      textDirection: Directionality.of(context),
      borderRadius: BorderRadius.circular(12),
      duration: const Duration(seconds: 5),
      leftBarIndicatorColor: Colors.red,
    )..show(context);
  }
}
