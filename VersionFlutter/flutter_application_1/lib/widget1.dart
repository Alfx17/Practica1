import 'package:flutter/material.dart';

class TextFieldsWidget extends StatelessWidget {
  const TextFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("TextFields", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text("Los TextField son componentes de interfaz de usuario para la entrada de texto que permiten a los usuarios ingresar una o varias líneas de texto, y se caracterizan por su flexibilidad en la personalización de su aspecto y comportamiento, ya que pueden incluir etiquetas, marcadores de posición, mensajes de error, iconos y estilos de diseño como relleno o contorno, adaptándose a los lineamientos de Material Design. "),
          const SizedBox(height: 20),
          TextField(controller: controller, decoration: const InputDecoration(labelText: "Escribe algo")),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Escribiste: ${controller.text}")),
              );
            },
            child: const Text("Mostrar texto"),
          ),
        ],
      ),
    );
  }
}
