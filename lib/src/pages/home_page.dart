
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Perfil'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.pushNamed(context, 'profile');
            },
          ),
          Divider(),
          ListTile(
            title: Text('Contacto'),
            leading: Icon(Icons.email),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.pushNamed(context, 'contact');
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
