import 'package:buscacep/models/cep_model.dart';
import 'package:buscacep/repositories/cep_repository.dart';
import 'package:flutter/material.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({super.key});

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  var cepController = TextEditingController(text: "");
  bool loading = false;
  var cepModel = CepModel();
  var cepRepository = CepRepository();

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
            body: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                  minWidth: MediaQuery.of(context).size.width,
                ),
                child: Column(children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: cepController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Digite o CEP',
                      hintText: 'Ex: 12345678',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var cep = cepController.text.trim();
                      cepController.text =
                          cep.replaceAll(RegExp(r'[^0-9]'), "");
                      if (cep.length == 8) {
                        setState(() {
                          loading = true;
                        });
                        cepModel = await cepRepository.consultar(cep);
                        setState(() {
                          loading = false;
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("CEP não encontrado"),
                          ),
                        );
                      }
                    },
                    child: const Text('Buscar'),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  if (loading) CircularProgressIndicator(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Logradouro: ${cepModel.address}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Cidade: ${cepModel.city} - ${cepModel.state}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ]),
              ),
            )));
  }
}
