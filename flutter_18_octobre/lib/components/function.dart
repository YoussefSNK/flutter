import 'package:flutter/material.dart';

class ChangePage extends StatefulWidget {
  const ChangePage({super.key, required this.title});

  final String title;

  @override
  State<ChangePage> createState() => _ChangePageState();
}

class _ChangePageState extends State<ChangePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(widget.title)],
    );
  }
}
