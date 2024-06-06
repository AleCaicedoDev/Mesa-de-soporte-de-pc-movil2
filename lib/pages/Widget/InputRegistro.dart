// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../provider/Usuarios/UsuarioFromProvider.dart';

class InputRegistro {
  static inputNombre(String textLabel, String textExample, IconData icon,
      BuildContext context, UsuariosFromProvider provider, TextInputType name) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xffbf001e),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    icon,
                    color: const Color(0xffbf001e),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: name,
                    onChanged: (value) => provider.nombre = value.trim(),
                    decoration: decorationInput(textLabel),
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                    cursorColor: const Color(0xffbf001e),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static inputDocumento(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      // UsuariosFromProvider provider,
      TextInputType number) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      margin: const EdgeInsets.only(bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    icon,
                    color: const Color(0xff000000),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: number,
                    decoration: decorationInput(textLabel),
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                    cursorColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static inputCelular(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      UsuariosFromProvider provider,
      TextInputType phone) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xffbf001e),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    icon,
                    color: const Color(0xffbf001e),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: phone,
                    onChanged: (value) => provider.celular = value.trim(),
                    decoration: decorationInput(textLabel),
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                    cursorColor: const Color(0xffbf001e),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static inputCorreo(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      //UsuariosFromProvider provider,
      TextInputType emailAddress) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      margin: const EdgeInsets.only(bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    icon,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: emailAddress,
                    //onChanged: (value) => provider.correo = value.trim(),
                    decoration: decorationInput(textLabel),
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                    cursorColor: const Color(0xffbf001e),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static inputDireccion(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      UsuariosFromProvider provider,
      TextInputType emailAddress) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xffbf001e),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    icon,
                    color: const Color(0xffbf001e),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: emailAddress,
                    onChanged: (value) => provider.direccion = value.trim(),
                    decoration: decorationInput(textLabel),
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                    cursorColor: const Color(0xffbf001e),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static inputPassword(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      //UsuariosFromProvider provider,
      TextInputType emailAddress) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    icon,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: TextField(
                    obscureText: true,
                    keyboardType: emailAddress,
                    // onChanged: (value) => provider.contrasena = value.trim(),
                    decoration: decorationInput(textLabel),
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                    cursorColor: const Color(0xffbf001e),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static inputConfirmaPassword(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      //UsuariosFromProvider provider,
      TextInputType emailAddress) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    icon,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: TextField(
                    obscureText: true,
                    keyboardType: emailAddress,
                    // onChanged: (value) => provider.confirmaContrasena = value.trim(),
                    decoration: decorationInput(textLabel),
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                    cursorColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static inputBarrio(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      UsuariosFromProvider provider,
      TextInputType emailAddress,
      Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      child: Container(
        margin: const EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          // color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xffbf001e),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                icon,
                color: const Color(0xffbf001e),
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  height: 42,
                  child: Text(textLabel,
                      style: TextStyle(color: color, fontSize: 16))),
            ),
          ],
        ),
      ),
    );
  }

  static inputCiudad(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      UsuariosFromProvider provider,
      TextInputType emailAddress,
      Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      child: Container(
        margin: const EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          // color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xffbf001e),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                icon,
                color: const Color(0xffbf001e),
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  height: 42,
                  child: Text(textLabel,
                      style: TextStyle(color: color, fontSize: 16))),
            ),
          ],
        ),
      ),
    );
  }

  static decorationInput(String textLabel) {
    return InputDecoration(
      label: Text(textLabel),
      labelStyle: TextStyle(
        color: Colors.grey[400],
      ),
      hintText: textLabel,
      hintStyle: TextStyle(
        color: Colors.grey[400],
      ),
      border: InputBorder.none,
      contentPadding: const EdgeInsets.all(5),
    );
  }

  static inputCodigoVerificacion(
    String textLabel,
    String textExample,
    IconData icon,
    BuildContext context,
    // UsuariosFromProvider provider,
    TextInputType num,
  ) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      margin: const EdgeInsets.only(bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    icon,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: num,
                    //onChanged: (value) => provider.correo = value.trim(),
                    decoration: decorationInput(textLabel),
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                    cursorColor: const Color(0xffbf001e),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
