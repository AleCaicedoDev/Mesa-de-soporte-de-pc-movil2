import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../CodigoQR/CodigoQRPages.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 5,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.white,
        actions: [
          SizedBox(
            width: size.height * 0.05,
            height: size.height * 0.05,
            child: Image.asset(
              'img/ajustes.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            width: size.height * 0.05,
            height: size.height * 0.05,
            child: Image.asset(
              'img/notificacion.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: size.width * 0.03),
            width: size.height * 0.05,
            height: size.height * 0.05,
            child: Image.asset(
              'img/usuario.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CodigoQRPages()),
          );
        },
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          Icons.edit_document,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: size.height * 0.02),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: size.height * 0.02),
                  Container(
                    alignment: Alignment.topLeft,
                    width: size.width * 0.90,
                    height: size.height * 0.20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('img/fondo_noticias.png'),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.00),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.height * 0.020,
                                      vertical: size.width * 0.010),
                                  child: Text(
                                    'Atención',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'KohSantepheap',
                                      fontSize: size.height * 0.015,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                SizedBox(height: size.height * 0.11),
                              ],
                            ),
                          ),
                          Expanded(
                            child: IntrinsicHeight(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                margin: EdgeInsets.only(
                                    left: size.height * 0.060,
                                    bottom: size.height * 0.050),
                                child: Padding(
                                  padding: EdgeInsets.all(size.height * 0.02),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Hoy el internet estará un poco lento por mantenimiento.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'KohSantepheap',
                                            fontSize: size.height * 0.012,
                                            fontWeight: FontWeight.w900),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left:
                                  size.width * 0.0290), // Margen a la izquierda
                          child: Row(
                            children: [
                              Icon(
                                Icons.folder_copy,
                                color: Colors.blue,
                              ), // Icono de reportes
                              SizedBox(
                                  width:
                                      10), // Espaciado entre el icono y el texto
                              Text(
                                'Mis Reportes', // Texto "Mis Reportes"
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      width: size.width * 0.90,
                      padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.02,
                        horizontal: size.width * 0.02,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[100],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ), // Icono de reportes
                                      SizedBox(
                                          width:
                                              10), // Espaciado entre el icono y el texto
                                      Text(
                                        'Sergio granada ', // Texto "Mis Reportes"
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    SizedBox(width: size.width * 0.02),
                                    Text(
                                      'Cargo:', // Información del cargo
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'KohSantepheap',
                                        fontSize: size.height * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.05),
                                    Text(
                                      'Analista', // Información del cargo
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'KohSantepheap',
                                        fontSize: size.height * 0.014,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.0001),
                                Row(
                                  children: [
                                    SizedBox(width: size.width * 0.02),
                                    Text(
                                      'Correo:', // Información del costo
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'KohSantepheap',
                                        fontSize: size.height * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.04),
                                    Text(
                                      'j.raigoza43@misena.edu.co', // Información del costo
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'KohSantepheap',
                                        fontSize: size.height * 0.014,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.0001),
                                Row(
                                  children: [
                                    SizedBox(width: size.width * 0.02),
                                    Text(
                                      'Fecha', // Información del correo electrónico
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'KohSantepheap',
                                        fontSize: size.height * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.055),
                                    Text(
                                      '31/05/2024', // Información del correo electrónico
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'KohSantepheap',
                                        fontSize: size.height * 0.014,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.0001),
                                Row(
                                  children: [
                                    SizedBox(width: size.width * 0.02),
                                    Text(
                                      'Caso:', // Información del costo
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'KohSantepheap',
                                        fontSize: size.height * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.06),
                                    Text(
                                      'Internet', // Información del costo
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'KohSantepheap',
                                        fontSize: size.height * 0.014,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: size.height * 0.030),
                                Text(
                                  'Estado', // Texto "Estado"
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'KohSantepheap',
                                    fontSize: size.height * 0.018,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.001),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: Text(
                                      'terminado',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.height * 0.010,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
