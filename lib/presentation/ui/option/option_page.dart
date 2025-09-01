import 'package:flutter/material.dart';
class OptionPage extends StatelessWidget{
  const OptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Option',),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Center(
        child: Text('home'),
      ),
    );
  }
}