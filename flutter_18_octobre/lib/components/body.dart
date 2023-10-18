import 'package:flutter/material.dart';
import 'package:flutter_18_octobre/components/sympa.dart';
import 'package:flutter_18_octobre/components/galere.dart';

class BodyComponents extends StatefulWidget {
  const BodyComponents({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _BodyComponentsState createState() => _BodyComponentsState();
}

class _BodyComponentsState extends State<BodyComponents> {
  int variable = 0;
  bool isDigit = true;

  void change(int valeur) {
    setState(() {
      variable = valeur;
      print('$variable, devientfff, $valeur');
    });
  }

  void callback(int v) {
    change(v);
  }

  void changeBoule() {
    setState(() {
      isDigit = !isDigit;
      print("y");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      backgroundColor:
          Color.fromARGB(255, 12, 12, 12), // Couleur de fond souhaitée
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                color: const Color.fromARGB(0, 255, 255, 255), //transparent
                child: Text(
                  '$variable',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 60),
                ),
              )
            ]),
            SizedBox(height: 50), // Espace vertical entre les rangées

            isDigit == true
                ? Calculette(callback: callback)
                : EcranImage(variable: variable),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeBoule,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
