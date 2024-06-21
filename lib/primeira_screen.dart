import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 

class PrimeiraScreen extends StatelessWidget {
  const PrimeiraScreen({Key? key}); 
  // Método para abrir o link do GitHub
  void _launchURL() async {
    const url = 'https://github.com/araujomarcel/GreenTrade';
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
        title: const Text('Projeto GreenTrade', style: TextStyle(color: Colors.green)), 
      ),
      backgroundColor: Colors.green, 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinha os itens ao longo do eixo vertical
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'O GreenTrade, uma iniciativa inovadora em prol da sustentabilidade. Esta plataforma busca endereçar os desafios ambientais contemporâneos, estabelecendo uma ponte entre empresas e consumidores para promover o consumo e produção responsáveis',
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
