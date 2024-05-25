import 'package:flutter/material.dart';
import 'package:pac_movil/Pages/Login/ConfrmarContrase%C3%B1a.dart';
import '../../Widget/InputRegistro.dart';

class Codigoverficacion extends StatelessWidget {
  const Codigoverficacion({super.key});

  @override
  Widget build(BuildContext context) {
    final size =
        MediaQuery.of(context).size; // Obtener el tamaño del dispositivo

    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/fondo3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: size.height * 0.005,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        'Código de verificación',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: size.height * 0.05),
                      Text(
                        'Introduce el código de verificación en el siguiente campo:',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: size.height * 0.01),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.1,
                          vertical: size.width * 0.02,
                        ),
                        width: size.width * 0.8,
                        child: InputRegistro.inputCodigoVerificacion(
                            'Codigo de verificacion',
                            'textExample',
                            Icons.verified,
                            context,
                            TextInputType.number),
                      ),
                      SizedBox(height: size.height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text('Regresar',
                                style: TextStyle(color: Colors.white)),
                          ),
                          SizedBox(width: size.width * 0.04),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ConfirmarContrasena()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text('Aceptar',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
