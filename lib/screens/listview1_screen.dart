import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Asuka','Shinji','Rei', 'Kaji'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 1'),
      ),
      body: ListView(
        children: [
          
          ...options.map(
            (user) => ListTile(
              title: Text(user),
              trailing: const Icon(Icons.arrow_forward_ios),
            )
            ).toList(),

            Divider(),
        ],
      ),
    );
  }
}