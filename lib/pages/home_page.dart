import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salon NaudTech 2023'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/logo.svg",
            ),
            const Text(
              'NaudTech 2023',
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'ABeeZee'
              ),
            ),
            const Text(
              "Bienvenue dans le monde du Futur ! Salon de l'informatique",
              style: TextStyle(
                  fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.lightGreen)
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => EventPage()
                    )
                );
              },
              label: Text('Afficher le Planning',
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              icon: Icon(Icons.calendar_month),
            )
          ],
        ),
      ),
    );
  }
}
