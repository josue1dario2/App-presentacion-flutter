

import 'package:card_presentacion/src/pages/url_link.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class Profile extends StatelessWidget{

  String pathImage;

  String name;

  Profile(this.pathImage,this.name);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              child: Stack(
                children: [
                  photo,
                  description,
                ],
              ),
            ),
            info,
            rowContact,
            SizedBox(height: 50.0,)
          ],
        ),
      ),
    );
  }
}
final photo =  Container(
    width: 450.0,
    height: 280.0,
    margin: const EdgeInsets.all(20.0),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(20.0)
      ),
      image: DecorationImage(
        image: AssetImage("assets/img/image.jpeg"),
        fit: BoxFit.cover
      )
    ),
  );

final description = Container(
  margin: const EdgeInsets.only(
    top: 257.0,
    left: 40.0
  ),
    width: 410.0,
    height: 160.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(
        Radius.circular(20.0)
      ),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: Offset(5,5),
            blurRadius: 20.0
        ),
      ]
    ),
    child: Column(
      children: [
        textName,
        subtitle,
        rowDescription,
      ],
    ),
  );

final textName = Container(
  margin: const EdgeInsets.only(
      top: 15.0,
      bottom: 10.0),
  child: const Text(
    "Josue Solis",
    style: TextStyle(
      fontFamily: "Lato",
      fontSize: 30.0,
      fontWeight: FontWeight.w900,
      letterSpacing: 1.0
    ),
  ),
);

final subtitle = Container(
  child: const Text(
    "Full Stack Developer",
    style: TextStyle(
      fontFamily: "Lato",
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Color(0xFFaaaaaa),
      letterSpacing: 2.0
    ),
  ),
);

final rowDescription = Container(
  margin: const EdgeInsets.only(top: 21.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      firstRow,
      starText,
      endRow
    ],
  ),
);


final firstRow = Container(
  child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 3.0),
          child: const Icon(
            Icons.apartment,
            color: Color(0xFFaaaaaa),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 3.0),
          child: const Text(
            "Mendoza City",
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFaaaaaa)
            ),
          ),
        )
      ]),
);

final starText = Container(
  child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 3.0),
          child: const Icon(
            Icons.star,
            color: Color(0xFFf2C611),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 3.0),
          child: const Text(
            "(5.0)",
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFaaaaaa)
            ),
          ),
        )
      ]),
);

final endRow = Container(
  child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 3.0),
          child: const Icon(
            Icons.add_ic_call_rounded,
            color: Color(0xFFaaaaaa),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 3.0),
          child: const Text(
            "+549 2613849535",
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFaaaaaa)
            ),
          ),
        )
      ]),
);

final info = Container(
  margin: const EdgeInsets.only(
    top: 10.0,
    left: 30.0
  ),
    child: Column(
      children: [
        titleInfo,
        textInfo,
        titleContact
      ],
    ),
);
final titleInfo = Container(
  alignment: Alignment.centerLeft,
  margin: const EdgeInsets.only(
    bottom: 15.0
  ),
  child: const Text(
    "Info",
    style: TextStyle(
      fontFamily: "Lato",
      fontSize: 24.0,
      fontWeight: FontWeight.bold
    ),
  ),
);

final textInfo = Container(
  margin: const EdgeInsets.only(
    right: 20.0,
    bottom: 10.0
  ),
  child: const Text(
    "Soy programador junior, me gusta resolver problemas y afrontar nuevos desafíos.Realice el curso de programación de Egg educación donde adquiri conocimientos de Java, MySql, Spring Boot, HTML, CSS, Bootstrap.",
    style: TextStyle(
        fontFamily: "Lato",
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFFaaaaaa)
    ),
  ),
);
final titleContact = Container(
  alignment: Alignment.centerLeft,
  margin: const EdgeInsets.only(
      top: 10.0,
      bottom: 20.0
  ),
  child: const Text(
    "Contact",
    style: TextStyle(
        fontFamily: "Lato",
        fontSize: 20.0,
        fontWeight: FontWeight.bold
    ),
  ),
);
final rowContact = Container(

  margin: EdgeInsets.only(
    top: 10.0,
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      contactLinke,
      contactGit,
      contactInstagram
    ],
  ),
);
final contactLinke = Container(
  child: Column(
    children: [
      TitleGeneric("LinkedIn"),
      UrlLink("josue-dario-solis","https://www.linkedin.com/in/josue-dario-solis/"),
    ],
  ),
);


final contactGit = Container(
  child: Column(
    children: [
      TitleGeneric("GitHub"),
      UrlLink("josue1dario2","https://github.com/josue1dario2")
    ],
  ),
);


final contactInstagram = Container(
  child: Column(
    children: [
      TitleGeneric("Instagram"),
      UrlLink("Instagram","https://www.instagram.com/josue.s314/")
    ],
  ),
);


class TitleGeneric extends StatelessWidget {

  String title = "titulo";

  TitleGeneric(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          bottom: 8.0
      ),
      child: Text(
        title,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
