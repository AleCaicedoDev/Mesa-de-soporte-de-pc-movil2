import 'package:flutter/material.dart';

import '../../Widget/InputRegistro.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({Key});

  @override
  void RecuperarContrasena(BuildContext context) {
    final size = MediaQuery.of(context).size;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
          child: SizedBox.expand(
            child: Stack(
              children: <Widget>[
                // Fondo de la página
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/fondo3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  heightFactor: 1,
                  widthFactor: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.25),
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('img/logo.png'),
                            ),
                          ),
                        ),
                        Text(
                          '¿Olvidaste tu contraseña?',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        SizedBox(height: size.height * 0.05),
                        Container(
                          width: size.width * 0.70,
                          alignment: Alignment.center,
                          child: Center(
                            child: Text(
                              'Enviaremos un código de verificación a su correo electrónico.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.06),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: size.width * 0.1,
                            vertical: size.width * 0.02,
                          ),
                          width: size.width *
                              0.8, // Ancho del contenedor del input
                          child: InputRegistro.inputCorreo(
                            'Correo electronico',
                            'textExample',
                            Icons.email,
                            context,
                            TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(height: size.height * 0.05),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  // Add border here (overrides default)

                                  shape: RoundedRectangleBorder(
                                    // Add border radius
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set desired radius
                                  ),
                                ),
                                child: Text('Regresar',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                            SizedBox(
                                width: size.width *
                                    0.04), // Separación entre los botones
                            SizedBox(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  // Add border here (overrides default)

                                  shape: RoundedRectangleBorder(
                                    // Add border radius
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set desired radius
                                  ),
                                ),
                                child: Text('Aceptar',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/fondo3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: size.height * 0.01,
                    top: size.height * 0.25,
                  ),
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/logo.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1,
                    vertical: size.width * 0.02,
                  ),
                  width: size.width * 0.8, // Ancho del contenedor del input
                  child: InputRegistro.inputDocumento(
                    'Numero de documento',
                    'textExample',
                    Icons.person,
                    context,
                    TextInputType.number,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1,
                    vertical: size.width * 0.01,
                  ),
                  width: size.width * 0.8, // Ancho del contenedor del input
                  child: InputRegistro.inputPassword(
                    'Contraseña',
                    'textExample',
                    Icons.password,
                    context,
                    TextInputType.emailAddress,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    RecuperarContrasena(context);
                  },
                  child: Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.30,
                    vertical: size.width * 0.05,
                  ),
                  width: 2,
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 59, 29, 190),
                        // Add border here (overrides default)

                        shape: RoundedRectangleBorder(
                          // Add border radius
                          borderRadius:
                              BorderRadius.circular(10.0), // Set desired radius
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
