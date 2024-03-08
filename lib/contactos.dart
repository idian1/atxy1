import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Contactos extends StatefulWidget {
    @override
    _ContactosState createState() => _ContactosState();
}

class _ContactosState extends State<Contactos> {
    List<String> _contactos = ['Contacto 1', 'Contacto 2', 'Contacto 3'];
    List<String> _contactosSeleccionados = [];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
                appBar: AppBar(
                title: Text('Contactos de emergencia'),
      ),
        body: ListView.builder(
                itemCount: _contactos.length,
                itemBuilder: (context, index) {
            return ListTile(
                    title: Text(_contactos[index]),
                    trailing: Checkbox(
                    value: _contactosSeleccionados.contains(_contactos[index]),
                    onChanged: (value) {
                    setState(() {
            if (value ?? false) {  // Si value es null, utiliza false
                _contactosSeleccionados.add(_contactos[index]);
            } else {
                _contactosSeleccionados.remove(_contactos[index]);
            }
                });
              },
            ),
          );
        },
      ),
    );
    }
}