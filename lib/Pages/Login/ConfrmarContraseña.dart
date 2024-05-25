import 'package:flutter/material.dart';
import '../../Widget/InputRegistro.dart';

class ConfirmarContrasena extends StatelessWidget {
  const ConfirmarContrasena({super.key});

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
                        'Nueva contraseña',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: size.height * 0.05),
                      Text(
                        'Introduce tu nueva contraseña:',
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
                        child: InputRegistro.inputPassword(
                            'Contraseña',
                            'textExample',
                            Icons.password,
                            context,
                            TextInputType.emailAddress),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.1,
                          vertical: size.width * 0.02,
                        ),
                        width: size.width * 0.8,
                        child: InputRegistro.inputConfirmaPassword(
                            'Confirmar contraseña',
                            'textExample',
                            Icons.verified_user_outlined,
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
                            onPressed: () {},
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
