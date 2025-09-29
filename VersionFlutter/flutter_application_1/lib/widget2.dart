import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 150, 212, 153),
      child: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            const Text(
              "Botones",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Los botones en apps móviles son elementos interactivos fundamentales "
              "que permiten a los usuarios realizar acciones y tomar decisiones con un solo toque, "
              "con el objetivo de guiar la navegación y el flujo de la aplicación. "
              "Sus características clave incluyen la legibilidad y claridad, la ubicación lógica, "
              "el énfasis según la importancia de la acción (botones principales y secundarios), "
              "la tipografía accesible para la legibilidad y el uso moderado para no sobrecargar la interfaz visual.",
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text("Botón Normal")),
            const SizedBox(height: 10),
            IconButton(onPressed: () {}, icon: const Icon(Icons.home, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
