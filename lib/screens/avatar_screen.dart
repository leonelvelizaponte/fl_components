import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Morty Smith'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5 ),
            child: const CircleAvatar(
              child: Text('MS'),
              backgroundColor: AppTheme.secondary,
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://avatarfiles.alphacoders.com/104/104391.png'),
         ),
      ),
    );
  }
}