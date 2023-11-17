import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactoPage extends StatelessWidget {
  final Map<String, dynamic> contacto;

  const ContactoPage ({required this.contacto});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
            leading:  IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
        backgroundColor: Colors.transparent, 
        elevation: 0, 
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 35.0,
      ),
      body:  Padding(
      padding:  const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
      child:  Column(
            children: [
            const SizedBox(height: 22),
              CircleAvatar(
                radius: 55.0, 
                backgroundColor: contacto['colorIcono'] ,
                child: Text(contacto['nombre'][0], style: const TextStyle(fontSize: 60, color: Colors.white)),
              ),
              const SizedBox(height: 50),
              Text('${contacto['nombre']}', style: const TextStyle(fontSize: 25), textAlign: TextAlign.center,),
              const SizedBox(height: 16),
              Column(
                children: [
                  const Divider(
                  height: 10,
                  color: Colors.blueGrey,    
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Column(children: [
                      Icon(Icons.call_outlined, color: Colors.indigo[600],),
                      Text('Llamar', style: TextStyle(color: Colors.indigo[600])),
                      ],),
                  const SizedBox(width: 35,),
                  Column(children: [
                    Icon(Icons.message_outlined, color: Colors.indigo[600]),
                    Text('Mensaje de texto',style: TextStyle(color: Colors.indigo[600])),
                      ],),
                  const SizedBox(width: 35,),
                  Column(children: [
                    Icon(Icons.videocam_outlined, color: Colors.indigo[600],),
                    Text('Video', style: TextStyle(color: Colors.indigo[600])),
                      ],),  
                      ]),
                    const SizedBox(height: 10),
                    const Divider(
                    height: 11,
                    color: Colors.blueGrey,     
                    ),
                  ],
                 ),              
                const SizedBox(height: 18),
              Container(
                decoration:  BoxDecoration(
                   borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color:  Colors.blueGrey[50]),
                  child:  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Información de contacto', 
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                        const SizedBox(height: 26),
                        Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                         Row(
                        children: <Widget>[
                        Icon(Icons.call_outlined, color: Colors.grey.shade800,),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('+${contacto['telefono']}', style: const TextStyle(fontSize: 15),),
                          Align(
                          alignment: Alignment.centerLeft,  
                          child:Text('Celular', style: TextStyle(fontSize: 13, color: Colors.grey.shade700),)),
                        ],),
                          ],
                        ),
                        Row(
                        children: <Widget>[
                        Icon(Icons.videocam_outlined,color: Colors.grey.shade800,),
                        const SizedBox(width: 25,),
                        Icon(Icons.message_outlined, color: Colors.grey.shade800,),
                          ],
                        ),
                        ]
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: <Widget>[
                        const Icon(Icons.email_outlined),
                        const SizedBox(width: 10),
                        Text('Enviar email a ${contacto['email']}', style: const TextStyle(fontSize: 15),)
                        ],),
                      const SizedBox(height: 24),
                      Row(
                        children: <Widget>[
                        const FaIcon(FontAwesomeIcons.squareWhatsapp, color: Colors.green, size: 27),
                        const SizedBox(width: 10),
                        Text('Enviar mensaje a +${contacto['telefono']}', style: const TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 24),
                      Row(
                        children: <Widget>[
                        const FaIcon(FontAwesomeIcons.squareWhatsapp, color: Colors.green, size: 27),
                        const SizedBox(width: 10),
                        Text('Llamar a +${contacto['telefono']}', style: const TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 24),
                      Row(children: <Widget>[
                        const FaIcon(FontAwesomeIcons.squareWhatsapp, color: Colors.green, size: 27),
                        const SizedBox(width: 10),
                        Text('Videollamar a +${contacto['telefono']}', style: const TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 24),
                      Row(children: <Widget>[
                        const FaIcon(FontAwesomeIcons.telegram, color: Colors.blue),
                        const SizedBox(width: 10),
                        Text('Mensaje al +${contacto['telefono']}', style: const TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 24),
                      Row(children: <Widget>[
                        const FaIcon(FontAwesomeIcons.telegram, color: Colors.blue),
                        const SizedBox(width: 10),
                        Text('Llamada de voz al +${contacto['telefono']}', style: const TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 24),
                      Row(children: <Widget>[
                        const FaIcon(FontAwesomeIcons.telegram, color: Colors.blue),
                        const SizedBox(width: 10),
                        Text('Videollamada al +${contacto['telefono']}', style: const TextStyle(fontSize: 15),)
                      ],)
                      ],
                        ),
                  ),),]
              ),
    ))));
  }
 }


  