import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
                title: 'Secuclip',
                home: Scaffold(
                appBar: AppBar(
                title: Text('Secuclip'),
        ),
        body: Center(
                child: Column(
                children: <Widget>[
        ElevatedButton(
                child: Text('Alerta'),
                onPressed: () => _mostrarAlerta(), // Accede a la función mostrarAlerta desde _MyAppState
              ),
        ElevatedButton(
                child: Text('Ajustes'),
                onPressed: () => _mostrarAjustes(), // Accede a la función mostrarAjustes desde _MyAppState
              ),
            ],
          ),
        ),
      ),
    );
    }

    void _mostrarAlerta() {
        // Implementa tu lógica de alerta aquí (por ejemplo, mostrar un diálogo)
    }

    void _mostrarAjustes() {
        // Implementa tu lógica de configuración aquí (por ejemplo, navegar a una pantalla de configuración)
    }
}