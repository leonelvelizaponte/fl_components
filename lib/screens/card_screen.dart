

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(
            imageUrl: 'https://cl.buscafs.com/www.levelup.com/public/uploads/images/632375_1004x670.jpg', 
            imgDescription: 'Cirilla',
          ),
          SizedBox(height: 10,),
          CustomCardType2(
            imageUrl: 'https://as01.epimg.net/meristation/imagenes/2020/01/14/reportajes/1579012123_423897_1579070998_noticia_normal.jpg', 
            imgDescription: 'Geralt',
            ),
          SizedBox(height: 10,),
          CustomCardType2(
            imageUrl: 'https://androidayuda.com/wp-content/uploads/2021/04/apertura-the-witcher-monster-slayer-registro.jpg', 
            //imgDescription: 'Jose Luis',
          ),
          SizedBox(height: 100,),
        ],
      ),
    );
  }
}

