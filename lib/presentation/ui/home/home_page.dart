import 'package:flutter/material.dart';
import 'package:read_me_app2/presentation/widgets/bottom_tab_bar/bottom_tab_bar.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('home',),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Center(
        child: Text('home'),
      ),
    );
  }
}