import 'package:flutter/material.dart';

class EcranImage extends StatelessWidget {
  final int variable;
  // int variable2;

  const EcranImage({super.key, required this.variable});
  void ecranImage2(var2) {
    // variable2 = var2;
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
              Image.asset('assets/images/pic$variable.png'),
            ],
          ),
        ],
      ),
    );
  }
}
