import 'package:flutter/material.dart';
import 'contacto_page.dart';
import 'datos.dart';

class ListasPage extends StatelessWidget {
  const ListasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(10),
      child: AppBar(
        backgroundColor: Colors.transparent, 
        elevation: 0, 
      ),),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.person_add_outlined, color: Colors.blue[800]),
            onPressed: () {},
          ),
          const SizedBox(width: 8.0), 
          Text(
            'Crear contacto nuevo',
            style: TextStyle(color: Colors.blue[800]),
          ),
        ],
      ),
      Expanded(
        child: ListView.builder(
          itemCount: listaContactos.length,
          itemBuilder: (BuildContext context, int index) {
            Map<String, dynamic> contacto = listaContactos[index];
            return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
            leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: contacto['colorIcono'],
            child: Text(
            contacto['nombre'][0],
            style: const TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
        
        title: Text(contacto['nombre'], style: const TextStyle(fontSize: 17)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactoPage(contacto: contacto)),
          );
        },
      ),
    );
          },
        ),
      ),
        FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: Colors.blue[800],
          child: const Icon(Icons.dialpad),
        ),
    ],
  ),
);
  }}