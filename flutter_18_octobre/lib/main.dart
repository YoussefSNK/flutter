import 'package:flutter/material.dart';
import 'package:flutter_18_octobre/components/body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 26, 255)),
        useMaterial3: true,
      ),
      home: const BodyComponents(title: 'Moche mais fonctionnel'),
    );
  }
}
