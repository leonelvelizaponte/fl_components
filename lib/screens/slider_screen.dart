import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnable
            ? (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null,
          ),

          Checkbox(
            activeColor: AppTheme.primary,
            value: _sliderEnable, 
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),

          CheckboxListTile(
            activeColor: AppTheme.secondary,
            title: const Text('Seleccione para habilitar Slider'),
            value: _sliderEnable, 
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),

          Switch(
            activeColor: AppTheme.primary,
            value: _sliderEnable, 
            onChanged: (value) {
              _sliderEnable = value;
              setState(() {});
            },
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.secondary,
            title: const Text('Tap para habilitar Slider'),
            value: _sliderEnable, 
            onChanged: (value) {
              _sliderEnable = value;
              setState(() {});
            },
          ),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.pngitem.com/pimgs/m/261-2613555_shinji-ikari-manga-hd-png-download.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}