import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Asuka','Shinji','Rei', 'Kaji'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => 
        ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(0, 128, 94, 1.0)),
          onTap: () {
            
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount: options.length,
      ),
    );
  }
}