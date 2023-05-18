import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffol 
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contador'),
      ),
      body: Center( //Body puede tener solo un child
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // sirve para centrar a cualquiera de los dos lados
          children: [
            const Text('Numero de clicks'),
            Text('$contador')
          ],
        ),//un column puede recibir un children(varios componentes)
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),

    );
  }
  
  Widget _crearBotones() {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          FloatingActionButton(
            onPressed: () => _botonMas(),
            child: const Icon(Icons.add),
            ),
            FloatingActionButton(
            onPressed: () => _botonMenos(),
            child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
            onPressed: () => _botonReinicio(),
            child: const Icon(Icons.refresh),
            )
        ],
      ),
    );
  }
  void _botonMas() {
    setState(() => contador++);
  }
  void _botonMenos() {
    if (contador > 0) {
    setState(() => contador--);
    }
    
  }
  void _botonReinicio() {
      setState(() => contador = 0);
  }
}