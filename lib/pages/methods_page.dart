import 'package:flutter/material.dart';

class MethodsPage extends StatelessWidget {
  const MethodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Methods')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Placeholder: isi untuk Methods (sama sementara)',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
