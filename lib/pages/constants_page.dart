import 'package:flutter/material.dart';

class ConstantsPage extends StatelessWidget {
  const ConstantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Constants')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Placeholder: isi untuk Constants (sama sementara)',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
