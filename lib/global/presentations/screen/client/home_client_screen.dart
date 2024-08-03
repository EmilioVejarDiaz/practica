import 'package:flutter/material.dart';


class HomeClientScreen extends StatefulWidget {
  final String name;
  const HomeClientScreen({super.key, required this.name
  });

  @override
  _HomeClientScreenState createState() => _HomeClientScreenState();
}

class _HomeClientScreenState extends State<HomeClientScreen>{

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose(){
    //TODO: implement dispose
    super.dispose();
  }

  closeState(){
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
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