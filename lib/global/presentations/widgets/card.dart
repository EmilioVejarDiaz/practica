import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget{
  const CardWidget ({super.key});

  @override
  Widget build(BuildContext context){
    return Card(
      child: ListTile(
        leading: const Icon(Icons.home),
        title: const Text('body'),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
           const SnackBar(content: Text('Selecciona la tarjeta'),
           duration: Duration(seconds: 2),
           )
          );
        },
      ),
    );
  }
}