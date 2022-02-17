import 'dart:math';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = AppTheme.primary;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    final random = Random();
    random.nextInt(100) < 50 
      ? _color = AppTheme.primary
      : _color = AppTheme.secondary;

    _width = random.nextInt(300).toDouble();
    _height = random.nextInt(300).toDouble();

    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animaciones de ayer y hoy'),
      ),
      body: Center(
         child: AnimatedContainer(
           duration: const Duration( milliseconds: 400 ),
           curve: Curves.easeOutCubic,
           width: _width,
           height: _height,
           decoration: BoxDecoration(
             color: _color,
             borderRadius: _borderRadius
           ),
         ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.play_arrow ),
        onPressed: changeShape,
      ),
    );
  }
}