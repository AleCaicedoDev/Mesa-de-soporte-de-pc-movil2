import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width:
                    size.height * 0.05, // Ancho deseado para la primera imagen
                height: size.height *
                    0.05, // Altura deseada para la primera imagen0
                child: Image.asset(
                  'img/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width:
                    size.height * 0.05, // Ancho deseado para la primera imagen
                height:
                    size.height * 0.05, // Altura deseada para la primera imagen
                child: Image.asset(
                  'img/usuario.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          SizedBox(
            width: size.height * 1, // Ancho deseado para la primera imagen
            height: size.height * 0.35, // Altura deseada para la primera imagen
            child: Image.asset(
              'img/fondo2.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Text(
            'Escanea este codigo de barras',
            style: TextStyle(fontSize: size.height * 0.025),
          )
          
        ],
      ),
    );
  }
}
