import 'package:app_tasques/components/item_tasca.dart';
import 'package:flutter/material.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({super.key});

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  List tasquesLlista = [
    {"titol": "Tasca 1", "valor": false},
    {"titol": "Tasca 2", "valor": true},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],

      //Appbar

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "App Tasques",
        ),
        foregroundColor: Colors.orange[200],
      ),

      //FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[300],
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.orange[200],
        ),
      ),

      //Body
      body: ListView.builder(
        itemCount: tasquesLlista.length,
        itemBuilder: (context, index) {
          return ItemTasca(
            textTasca: tasquesLlista[index]["titol"],
            valorCheckBox: tasquesLlista[index]["valor"],
          );
        },
      ),
    );
  }
}
