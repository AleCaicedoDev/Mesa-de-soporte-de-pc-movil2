import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:pac_movil/Pages/Home/FT.dart';
import 'package:pac_movil/Widget/InputHome.dart';

class Qr extends StatelessWidget {
  const Qr({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: ListView(
          children: [
            Container(
              height: size.height * 0.07,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.height * 0.05,
                        height: size.height * 0.05,
                        child: Image.asset(
                          'img/logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.030),
                      SizedBox(
                        width: size.height * 0.05,
                        height: size.height * 0.05,
                        child: Image.asset(
                          'img/ajustes.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: size.width * 0.030),
                      SizedBox(
                        width: size.height * 0.05,
                        height: size.height * 0.05,
                        child: Image.asset(
                          'img/notificacion.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: size.width * 0.030),
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
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            SizedBox(
              width: size.height * 1,
              height: size.height * 0.20,
            ),
            SizedBox(height: size.height * 0.02),
            Center(
              child: Column(
                children: [
                  Text(
                    'Escanea este código de barras',
                    style: TextStyle(fontSize: size.height * 0.025),
                  ),
                  SizedBox(height: size.height * 0.02),
                  ElevatedButton(
                    onPressed: () => _scanBarcode(context),
                    child: Text(
                      'Escanear',
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
                  Text(
                    'o',
                    style: TextStyle(fontSize: size.height * 0.025),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    'Escribe la referencia',
                    style: TextStyle(fontSize: size.height * 0.025),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.width * 0.02,
                    ),
                    width: size.width * 0.8, // Ancho del contenedor del input
                    child: Inputhome.inputBarras(
                      'Numero de documento',
                      'textExample',
                      Icons.bar_chart,
                      context,
                      TextInputType.number,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FichaTecnica()),
                      );
                    },
                    child: Text(
                      'Continuar',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _scanBarcode(BuildContext context) async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'Cancelar', true, ScanMode.BARCODE);

    // Aquí puedes manejar el resultado del escaneo, como enviarlo a otra pantalla o realizar alguna acción en función del código escaneado
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Código escaneado: $barcodeScanRes'),
        duration: Duration(seconds: 3),
      ),
    );
  }
}
