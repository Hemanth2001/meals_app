import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import './screens/categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     theme: ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch:
     Colors.pink).copyWith(secondary: Colors.amber),canvasColor: Color
         .fromRGBO(255, 254, 229, 1),
     fontFamily: 'Raleway',
     textTheme: ThemeData.light().textTheme.copyWith(
       bodyText1:TextStyle(
         color: Color.fromRGBO(20, 51, 51, 1),
       ),
        bodyText2: TextStyle(
         color: Color.fromRGBO(20, 51, 51, 1 ),

     ) ,
         subtitle1:TextStyle(
           fontSize: 20,
             fontFamily: 'Raleway',
           fontWeight: FontWeight.bold
         )
     )),
      home:TabsScreen(),
    );
  }
}//


