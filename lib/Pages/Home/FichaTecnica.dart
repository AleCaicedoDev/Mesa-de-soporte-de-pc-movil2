import 'package:flutter/material.dart';
import 'package:pac_movil/Pages/Home/ingreso.dart';
class FichaTecnica extends StatelessWidget {
  const FichaTecnica({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ingreso()),
          );
        },
        backgroundColor: Colors.blue, // Establece el color de fondo del botón
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Haz el botón redondo
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.height * 0.05,
                  height: size.height * 0.05,
                  child: Image.asset(
                    'img/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: size.height * 0.05,
                  height: size.height * 0.05,
                  child: Image.asset(
                    'img/usuario.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ficha tecnica',
                    style: TextStyle(fontSize: size.height * 0.025),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    alignment: Alignment.topLeft,
                    height: size.height * 0.22,
                    width: size.width * 0.90,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue.shade400, Colors.blue.shade900],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Computador:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.height * 0.022,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  'xyz',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.height * 0.018,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.05),
                                Text(
                                  'Serial:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.height * 0.022,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  'ABC123',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.height * 0.018,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'No producto:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.022,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                'Algo random',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.018,
                                ),
                              ),
                              SizedBox(height: size.height * 0.018),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Información',
                    style: TextStyle(
                      fontSize: size.height * 0.025,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    alignment: Alignment.topLeft,
                    width: size.width * 0.90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(size.width * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Descripcion de la intervención',
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 74, 136),
                              fontSize: size.height * 0.022,
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            'Detalles',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height * 0.018,
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Text(
                            'Fecha del ultimo mantenimiento:',
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 74, 136),
                              fontSize: size.height * 0.022,
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            '01/01/2025',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height * 0.018,
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Text(
                            'Tipo de mantenimiento',
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 74, 136),
                              fontSize: size.height * 0.022,
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            'internet',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height * 0.018,
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Text(
                            'Ultimo encargado:',
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 74, 136),
                              fontSize: size.height * 0.022,
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            'Nombre',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height * 0.018,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
