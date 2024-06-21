import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 

class SegundaScreen extends StatelessWidget {
  const SegundaScreen({Key? key}); 

  // Método para abrir o link do GitHub
  void _launchURL() async {
    const url = 'https://github.com/araujomarcel/PI-4-Petshop';
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
        title: const Text('Projeto Petshop', style: TextStyle(color: Colors.black)), // Mudança da cor do título
      ),
      backgroundColor: Colors.grey, 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinha os itens ao longo do eixo vertical
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Sistema para gerenciamento de PetShop, Recepcionista, Veterinário e Clientes serão beneficiados com ótimos recursos inovadores desse sistema',
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
