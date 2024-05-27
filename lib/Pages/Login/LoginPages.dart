import 'package:flutter/material.dart';
import 'package:pac_movil/Pages/Home/Home.dart';
import 'package:pac_movil/Pages/Login/RecuparContrase%C3%B1a.dart';
import '../../Widget/InputRegistro.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/fondo3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Contenido
            Center(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: size.height * 0.01,
                      top: size.height * 0.212,
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
                      Icons.verified_user_outlined,
                      context,
                      TextInputType.emailAddress,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecuperarContrasena()),
                      );
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
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
                            borderRadius: BorderRadius.circular(
                                10.0), // Set desired radius
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
