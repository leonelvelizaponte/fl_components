import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {

      'first_name' : 'Leonel',
      'last_name'  : 'Leonel',
      'email'      : 'Leonel',
      'password'   : 'Leonel',
      'role'       : 'Leonel',

    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
          
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario', 
                  formProperty: 'first_name', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
          
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  formProperty: 'last_name', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
          
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
          
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Ingrese el password',
                  passType: true,
                  formProperty: 'password', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                    DropdownMenuItem(value: 'Client', child: Text('Client')),
                    DropdownMenuItem(value: 'What the fuck', child: Text('What the fuck')),
                  ], 
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(height: 30),
          
                ElevatedButton(
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode() );
                    
                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }
                    print(formValues);
                  }, 
                  child: const Text('Guardar')
                )
          
              ],
            ),
          )
        )
      ),
    );
  }
}

