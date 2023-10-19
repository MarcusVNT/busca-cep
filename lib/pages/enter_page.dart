import 'package:buscacep/pages/test_http.dart';
import 'package:flutter/material.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({super.key});

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 190),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 51, 51, 182),
        title: const Text(
          'Buscador de CEPs',
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite o CEP',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Buscar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => const TestHTTP()));
            },
            child: const Text('Test Page'),
          ),
        ],
      ),
    ));
  }
}
