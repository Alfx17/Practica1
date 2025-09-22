import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, (i) => "Elemento ${i + 1}");

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Listas",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Las características principales de las listas en apps móviles son la capacidad de organizar "
            "y mostrar conjuntos de información de forma vertical y desplazable (scrolling), la interactividad "
            "(selección, filtrado, ordenamiento), la personalización (vistas y reglas) y la colaboración para "
            "el seguimiento de datos. También pueden incluir la visualización en cuadrícula (grid) para imágenes "
            "y el uso de animaciones para mejorar la experiencia del usuario.",
          ),
          const SizedBox(height: 20),
          // Ahora los items reales de la lista
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    leading: const Icon(Icons.star),
                    title: Text(items[index]),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Seleccionaste: ${items[index]}")),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
