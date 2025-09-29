import 'package:flutter/material.dart';

class SelectionWidget extends StatefulWidget {
  const SelectionWidget({super.key});

  @override
  State<SelectionWidget> createState() => _SelectionWidgetState();
}

class _SelectionWidgetState extends State<SelectionWidget> {
  bool isChecked = false;
  bool isSwitched = false;
  String selectedOption = "Opción A";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 209, 182, 165),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Selección (CheckBox, Radio, Switch)", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text("Los elementos de selección en una app móvil se caracterizan por ser intuitivos, claros y eficientes, permitiendo al usuario elegir fácilmente entre diferentes opciones de manera rápida y sin confusiones. Deben adaptarse a la marca, ofrecer una buena experiencia de usuario, ser fácilmente navegables y estar integrados de forma natural en la interfaz de la aplicación. "),
          const SizedBox(height: 20),
          CheckboxListTile(
            title: const Text("Aceptar términos"),
            value: isChecked,
            onChanged: (val) => setState(() => isChecked = val!),
          ),
          RadioListTile(
            title: const Text("Opción A"),
            value: "Opción A",
            groupValue: selectedOption,
            onChanged: (val) => setState(() => selectedOption = val!),
          ),
          RadioListTile(
            title: const Text("Opción B"),
            value: "Opción B",
            groupValue: selectedOption,
            onChanged: (val) => setState(() => selectedOption = val!),
          ),
          SwitchListTile(
            title: const Text("Activar notificaciones"),
            value: isSwitched,
            onChanged: (val) => setState(() => isSwitched = val),
          ),
        ],
      ),
    );
  }
}
