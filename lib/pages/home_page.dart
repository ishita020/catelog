import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Catalog App"),
      ),
        body:Center(
         child:Container(
         child: Text("welcome to codepur days $days by $name"),
        ),
       
        ), 
        drawer: Drawer(),
    );
  }
}