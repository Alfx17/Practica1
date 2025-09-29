import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 206, 117, 90),
      child: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Elementos de Información",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Los elementos de información en una app móvil deben ser claros, relevantes, interactivos, "
              "accesibles, consistentes y adaptables para una excelente experiencia de usuario, "
              "facilitando la comprensión del contenido y la ejecución de tareas de manera eficiente. "
              "La información se presenta a través de componentes visuales como texto, videos y animaciones, "
              "organizados en una interfaz intuitiva y fácil de usar, que a su vez integra funcionalidad "
              "para guiar al usuario de forma rápida y cómoda.",
            ),
            SizedBox(height: 20),
            // Barra de progreso lineal
            LinearProgressIndicator(
              minHeight: 8,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              backgroundColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
