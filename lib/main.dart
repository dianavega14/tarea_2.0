import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: null,
    body:  Padding(
      padding:  const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
      child:  Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back),
              ),
              const SizedBox(height: 55),
              const CircleAvatar(
                radius: 55.0, 
                backgroundColor: Color.fromARGB(255, 237, 31, 100) ,
                child: Text('P', style: TextStyle(fontSize: 60, color: Colors.white)),
              ),
              const SizedBox(height: 50),
              const Text('Pascualillo', style: TextStyle(fontSize: 25)),
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
                          const  Text('+504 9902-9311', style: TextStyle(fontSize: 15),),
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
                      const SizedBox(height: 26),
                      const Row(
                        children: <Widget>[
                        FaIcon(FontAwesomeIcons.squareWhatsapp, color: Colors.green, size: 27),
                        SizedBox(width: 10),
                        Text('Enviar mensaje a +504 9902-9311', style: TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 26),
                      const Row(
                        children: <Widget>[
                        FaIcon(FontAwesomeIcons.squareWhatsapp, color: Colors.green, size: 27),
                        SizedBox(width: 10),
                        Text('Llamar a +504 9902-9311', style: TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 26),
                      const Row(children: <Widget>[
                        FaIcon(FontAwesomeIcons.squareWhatsapp, color: Colors.green, size: 27),
                        SizedBox(width: 10),
                        Text('Videollamar a +504 9902-9311', style: TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 26),
                      const Row(children: <Widget>[
                        FaIcon(FontAwesomeIcons.telegram, color: Colors.blue),
                        SizedBox(width: 10),
                        Text('Mensaje al +50499029311', style: TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 26),
                      const Row(children: <Widget>[
                        FaIcon(FontAwesomeIcons.telegram, color: Colors.blue),
                        SizedBox(width: 10),
                        Text('Llamada de voz al +50499029311', style: TextStyle(fontSize: 15),)
                      ],),
                      const SizedBox(height: 26),
                      const Row(children: <Widget>[
                        FaIcon(FontAwesomeIcons.telegram, color: Colors.blue),
                        SizedBox(width: 10),
                        Text('Videollamada al +50499029311', style: TextStyle(fontSize: 15),)
                      ],)
                      ],
                        ),
                  ),),]
              ),
    ))));
  }
  }