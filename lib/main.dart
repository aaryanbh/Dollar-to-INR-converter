import 'package:flutter/material.dart';
import 'currency.dart';
void main(){

runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Currency(),
    );


  }
}