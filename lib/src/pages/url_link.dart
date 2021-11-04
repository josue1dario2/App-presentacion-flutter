
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class UrlLink extends StatelessWidget {

  String titulo = "titulo";
  String link = "link";

  UrlLink(this.titulo,this.link);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(
                  style: linkText,
                  text: titulo,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url = link;
                      if(await canLaunch(url)){
                        await launch(url);
                      }else{
                        throw "Cannot load Url";
                      }
                    }
              ),
            ]
        ),
      ),
    );
  }
}
var linkText = const TextStyle(
    color: Colors.blue
);