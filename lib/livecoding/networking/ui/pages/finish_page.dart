import 'package:flutter/material.dart';

class FinishPage extends StatefulWidget {
  const FinishPage({super.key});

  @override
  State<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/');
      },
<<<<<<< HEAD
      child: const Text('Start Over'),
=======
      child: Text('Start Over'),
>>>>>>> main
    )));
  }
}
