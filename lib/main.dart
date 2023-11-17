// main.dart
import 'package:flutter/material.dart';
import 'package:tarea2/lista.dart';
import 'contacto_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mi Proyecto',
      home: ListasPage(),
    );
  }
}

void mostrarContacto(BuildContext context, Map<String, dynamic> contacto) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ContactoPage(contacto: contacto)),
  );
}
