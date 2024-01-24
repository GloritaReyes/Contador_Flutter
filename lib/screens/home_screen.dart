
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const  fontSize30 = TextStyle(fontSize: 30);
    int counter = 15;

   return  Scaffold(
    appBar: AppBar(
      title: const Text('HomeScreen'),
      elevation: 0,
      backgroundColor: Colors.lightBlueAccent,
      centerTitle: true,
    ),
     body: Center(
       child: Column(
           mainAxisAlignment: MainAxisAlignment.center,      
           children:[
            const Text('Número de Clicks', style:fontSize30),
           Text(' $counter',style: fontSize30),
         ],
       ),
     ),
    
     floatingActionButton:  FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      onPressed: () { 

        counter++;
        print('Hola Mundo: $counter');
        
      },
     ),
   );
  }
}