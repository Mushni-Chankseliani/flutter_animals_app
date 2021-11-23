import 'package:flutter/material.dart';
import 'presentation/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'provider/animals_provider.dart';

void main() {
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals',
      home: ChangeNotifierProvider<AnimalsProvider>(
        create: (context) => AnimalsProvider(),
        child: const HomeScreen(),
      ),
    );
  }
}
