import 'package:flutter/material.dart';

class SearchTripsPage extends StatelessWidget {
  const SearchTripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF4268D3),
      ),
      backgroundColor: const Color(0xFF4268D3),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white, // Color de fondo del contenedor de búsqueda
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Knucles Mount',
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Resultado: Gabriel Pico'),
                          duration: const Duration(seconds: 2), // Duración del SnackBar
                          action: SnackBarAction(
                            label: 'Cerrar',
                            onPressed: () {
                              // Acción cuando se presiona el botón de cerrar
                              ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
