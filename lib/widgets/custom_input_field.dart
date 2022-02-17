import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? passType;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText,
    this.helperText, 
    this.icon,
    this.suffixIcon, 
    this.keyboardType,
    this.passType, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Al nentrar al screen se posiciona listo para escribir
      autofocus: false,
      // info default del input
      initialValue: '',
      // Te permite hacer que automaticamente con cada espacio Capitalice en el teclado del movil
      textCapitalization: TextCapitalization.words,
      // cambiar el teclado del movil
      keyboardType: keyboardType ?? TextInputType.name,
      obscureText: passType ?? false,
      onChanged: ( value ) => formValues[formProperty] = value,
      validator:(value) {
        if ( value == null ) return 'Este campo es requerido';
        return value.length < 3 ? 'Min de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        // placeholder
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.person),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}