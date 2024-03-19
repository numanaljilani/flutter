import 'package:flutter/material.dart';
import 'package:myapp/views/home.dart';

class myapp extends StatelessWidget {
  const myapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'myapp', home: HomeView());
  }
}
