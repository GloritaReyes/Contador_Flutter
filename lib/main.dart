import 'package:counter_app/screens/counter_screen.dart';
import 'package:flutter/material.dart';
//import 'package:counter_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner:false,
   //  home: HomeScreen()
    home: CounterScreen(),
   theme: ThemeData(
       
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
          iconTheme: IconThemeData(
            color: Colors.white,
            
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
           
          )
        ),
        
      )
      
    );
  }
}