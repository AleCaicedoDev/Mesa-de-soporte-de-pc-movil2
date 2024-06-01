
import 'package:flutter/material.dart';


class Inputhome {
  static inputBarras(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      //UsuariosFromProvider provider,
      TextInputType Text) {
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
              border: Border.all(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
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
                    keyboardType: Text,
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

  static Descripcion(
    String textLabel,
    String textExample,
    BuildContext context,
    TextInputType textType,
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
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: textType,
                    maxLines: null, // Permitir múltiples líneas
                    // onChanged: (value) => provider.correo = value.trim(),
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

  static Fecha_ultima(
      String textLabel,
      String textExample,
      IconData icon,
      BuildContext context,
      //UsuariosFromProvider provider,
      TextInputType datetime) {
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
              border: Border.all(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
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
                    keyboardType: datetime,
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
}
