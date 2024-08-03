import 'package:flutter/material.dart';

class SimpleContainerWidget extends StatefulWidget {
  const SimpleContainerWidget({super.key});

  @override
  _SimpleContainerWidgetState createState() => _SimpleContainerWidgetState();
}

class _SimpleContainerWidgetState extends State<SimpleContainerWidget> {
  bool _isChecked = false;

  void _toggleCheck() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleCheck,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: _isChecked ? Colors.greenAccent : Colors.blueAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _isChecked ? 'Azul' : 'Verde',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            Icon(
              _isChecked ? Icons.check_box : Icons.check_box_outline_blank,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
