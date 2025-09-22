import 'package:flutter/material.dart';
import 'main.dart';
import 'widget1.dart';
import 'widget2.dart';
import 'widget3.dart';
import 'widget4.dart';
import 'widget5.dart';

class UIActivity extends StatefulWidget {
  const UIActivity({super.key});

  @override
  State<UIActivity> createState() => _UIActivityState();
}

class _UIActivityState extends State<UIActivity> {
  int _currentIndex = 0;

  final List<Widget> _widgets = const [
    TextFieldsWidget(),
    ButtonsWidget(),
    SelectionWidget(),
    ListWidget(),
    InfoWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Descripción: ")),
      body: _widgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: "TextFields"),
          BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: "Botones"),
          BottomNavigationBarItem(icon: Icon(Icons.check_box), label: "Selección"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listas"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Cambia el widget mostrado
          });
        },
      ),
    );
  }
}
