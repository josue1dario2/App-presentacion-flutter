
import 'package:card_presentacion/src/pages/home_page.dart';
import 'package:card_presentacion/src/pages/profile.dart';
import 'package:card_presentacion/src/pages/send_email.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'profile': (BuildContext context) => Profile("assets/img/image.jpeg","Josue Solis"),
        'contact': (BuildContext context) => SendEmail(),


      },
      //home: Profile("assets/img/image.jpeg","Josue Solis"),
    );
  }
}

