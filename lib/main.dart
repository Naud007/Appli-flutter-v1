import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Salon NaudTech 2023'),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/mina.jpg"),
              const Text(
                  'NaudTech 2023',
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: 'ABeeZee'
                ),
              ),
              const Text(
                  "Bienvenue dans le monde du Futur ! Salon de l'informatique",
              style: TextStyle(
                fontSize: 24
              ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
