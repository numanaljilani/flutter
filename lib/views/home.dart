import 'package:flutter/material.dart';
import 'package:myapp/views/clculatorView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: CalculatorView(),
      ),
    );
  }
}
