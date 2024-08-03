import 'package:flutter/material.dart';
import 'package:practicaflutter1/global/presentations/widgets/card.dart';
import 'package:practicaflutter1/global/presentations/widgets/simple_container.dart';

class MenuAdminScreen extends StatelessWidget {
  final String title;

  const MenuAdminScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardWidget(),
            SizedBox(height: 20.0),
            SimpleContainerWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MenuAdminScreen(title: 'Título de la pantalla'),
  ));
}
