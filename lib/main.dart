import 'package:flutter/material.dart';
import 'package:my_app/info_card.dart';
import 'package:google_fonts/google_fonts.dart';

const url = 'https://github.com/teerit';
const email = 'teeritploensin@gmail.com';
const phone = '+66 86 388 2670';
const location = 'Bangkok, Thailand';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
                radius: 50, backgroundImage: AssetImage('images/teerit.jpg')),
            Text('Teerit Ploensin',
                style: GoogleFonts.pacifico(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              'Software Engineer',
              style: GoogleFonts.sourceSansPro(
                  fontSize: 30,
                  color: Colors.teal[50],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.teal.shade700,
              ),
            ),
            InfoCard(
              text: phone,
              icon: Icons.phone,
            ),
            InfoCard(
              text: email,
              icon: Icons.email,
            ),
            InfoCard(
              text: url,
              icon: Icons.web,
            ),
            InfoCard(
              text: location,
              icon: Icons.location_city,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.teal[200],
    );
  }
}
