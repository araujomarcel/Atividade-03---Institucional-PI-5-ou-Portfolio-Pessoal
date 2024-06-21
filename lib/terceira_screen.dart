import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 

class TerceiraScreen extends StatelessWidget {
  const TerceiraScreen({Key? key}); 

  // Método para abrir o link do GitHub
  void _launchURL() async {
    const url = 'https://github.com/araujomarcel/ParkControll';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir o link $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projeto ParkControll', style: TextStyle(color: Colors.red)), 
      ),
      backgroundColor: Colors.brown, // Define a cor de fundo como marrom
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinha os itens ao longo do eixo vertical
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'ParkControll, Sistema desenvolvido para controle de estacionamentos.',
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _launchURL,
              child: const Text('Visite o GitHub do projeto'),
            ),
          ),
        ],
      ),
    );
  }
}
