// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class TestHTTP extends StatefulWidget {
//   const TestHTTP({super.key});

//   @override
//   State<TestHTTP> createState() => _TestHTTPState();
// }

// class _TestHTTPState extends State<TestHTTP> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(title: const Text('Teste HTTP')),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () async {
//             var response =
//                 await http.get(Uri.parse("https://www.google.com.br/marcus"));
//             print(response.body);
//             print(response.statusCode);
//             print("Ja é real");
//             print("Vida me surpreenda");
//           },
//           child: const Icon(Icons.add),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {},
//             child: const Text('Teste HTTP'),
//           ),
//         ),
//       ),
//     );
//   }
// }
