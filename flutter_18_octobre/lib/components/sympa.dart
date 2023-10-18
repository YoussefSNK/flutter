import 'package:flutter/material.dart';

class Calculette extends StatefulWidget {
  final void Function(int) callback;
  const Calculette({super.key, required this.callback});
  void myCB(int v) {
    callback(v);
  }

  @override
  State<Calculette> createState() => _CalculetteState(myCB: myCB);
}

class _CalculetteState extends State<Calculette> {
  int variable = 0;
  bool nul = true;
  final void Function(int) myCB;
  _CalculetteState({required this.myCB});
  void change(int valeur) {
    setState(() {
      //print('$variable');
      variable = valeur;
      myCB(valeur);
      //print('devient $valeur');
    });
  }

  void changeBoule() {
    nul = !nul;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(1);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("1",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(2);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("2",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(3);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("3",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 40), // Espace vertical entre les rangées

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(4);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("4",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(5);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("5",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(6);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("6",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 40), // Espace vertical entre les rangées

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(7);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("7",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(8);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("8",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(9);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("9",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 40), // Espace vertical entre les rangées

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      change(0);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 196, 16)),
                    child: const Text("0",
                        style: TextStyle(color: Colors.white, fontSize: 60))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
