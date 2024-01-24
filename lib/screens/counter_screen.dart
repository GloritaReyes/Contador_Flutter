
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   int counter = 15;

   void increase(){
    counter++;
    setState(() {});
   }

    void decrease(){
    counter--;
    setState(() {});
   }

      void reset(){
    counter = 0;
    setState(() {});
   }

  @override
  Widget build(BuildContext context) {

    const  fontSize30 = TextStyle(fontSize: 30);
    
   return  Scaffold(
    appBar: AppBar(
      title: const Text('CounterScreen'),
      elevation: 0,
      backgroundColor: Colors.blue,
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

     floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
     floatingActionButton:  CustomFloatingActions(
      increaseFn: increase,
      decreaseFn:decrease,
      resetFn:reset
     ),
   );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
   final Function resetFn;
  
  const CustomFloatingActions({
    super.key, required this.increaseFn, required this.decreaseFn, required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        FloatingActionButton(
          backgroundColor: Colors.blue,
           child: const Icon(Icons.exposure_plus_1_outlined),
         onPressed: ()=> increaseFn(),
         
        ),
        
         FloatingActionButton(
           backgroundColor: Colors.blue,
           child:const  Icon(Icons.exposure_outlined),
         onPressed: () {
          resetFn();
         }  
        ),
    
        FloatingActionButton(
           backgroundColor: Colors.blue,
           child: const Icon(Icons.exposure_minus_1_outlined),
         onPressed:() => decreaseFn(),       
        ),
      ],
    );
  }
}