


import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
//import 'package:flutter/widgets.dart';



class SendEmail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _keyForm = GlobalKey<FormState>();

    final nombre = TextEditingController();
    final email = TextEditingController();
    final asunto = TextEditingController();
    final mensaje = TextEditingController();

    String nombre_valor = '';
    String email_valor = '';
    String asunto_valor = '';
    String mensaje_valor = '';

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Enviar mensaje"),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _keyForm,
            child: Container(
              margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0,),
                  TextFormField(
                    controller: nombre,
                    validator: (valor){
                      if(valor!.isEmpty){
                        return "El nombre esta vacio";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        labelText: "Nombre",
                        helperText: "Ingrese el nombre",
                        border: OutlineInputBorder(),
                        isDense: false,
                        contentPadding: EdgeInsets.all(10.0)
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  TextFormField(
                    controller: email,
                    validator: (valor){
                      if(valor!.isEmpty){
                        return "El email esta vacio";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: "Email",
                        helperText: "Ingrese el email",
                        border: OutlineInputBorder(),
                        isDense: false,
                        contentPadding: EdgeInsets.all(10.0)
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  TextFormField(
                    controller: asunto,
                    validator: (valor){
                      if(valor!.isEmpty){
                        return "El asunto esta vacio";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        labelText: "Asunto",
                        helperText: "Ingrese el asunto",
                        border: OutlineInputBorder(),
                        isDense: false,
                        contentPadding: EdgeInsets.all(10.0)
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  TextFormField(
                    controller: mensaje,
                    minLines: 6,
                    maxLines: null,
                    validator: (valor){
                      if(valor!.isEmpty){
                        return "El mensaje esta vacio";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                        labelText: "Mensaje",
                        helperText: "Ingrese el mensaje",
                        border: OutlineInputBorder(),
                        isDense: false,
                        contentPadding: EdgeInsets.all(10.0)
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text("Enviar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      onPressed: (){
                        if(_keyForm.currentState!.validate()){
                          print("----validacion exitosa------");

                          nombre_valor = nombre.text;
                          email_valor = email.text;
                          asunto_valor = asunto.text;
                          mensaje_valor = mensaje.text;

                          print(nombre_valor);
                          print(email_valor);
                          print(asunto_valor);
                          print(mensaje_valor);

                          sendEmail(
                              name: nombre_valor,
                              email: email_valor,
                              subject: asunto_valor,
                              message: mensaje_valor
                          );

                        }else{
                          print("------Error en el formulario------");
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





Future sendEmail({
  required String name,
  required String email,
  required String subject,
  required String message,
}) async{

  final serviceId = 'service_bty40wu';
  final templateId = 'template_bue5had';
  final userId = 'user_Zj9FvyLhEUY7RlqJedxRu';

  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(
      url,
      headers: {
        'origin': 'http//localhost',
        'Content-type': 'application/json',
      },
      body: json.encode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name':name,
            'user_email':email,
            //'to_email': 'other.email@gmail.com',
            'user_subject':subject,
            'user_message': message,
          }
        },
      )
  );

  print(response.body);
}

