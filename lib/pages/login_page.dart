// ignore_for_file: prefer_const_constructors

import 'package:catelog/utils/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String name ="";
  bool changeButton=false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formkey.currentState!.validate()){
     setState((){
                  changeButton=true;
              } );
             await Future.delayed(Duration(seconds:1));
             await Navigator.pushNamed(
              context,MyRoutes.homeRoute);
              setState(() {
               changeButton=false;
              });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Form(
         key:_formkey,
      child: Column(
        children:[
          Image.asset(
            "assets/login image 2.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
           ),
           Text(
            "welcome $name",
            style: TextStyle(
              fontSize:28,
            fontWeight:FontWeight.bold,
             ),
           ),
           SizedBox(
            height:20.0,
           ),
           Padding(
            padding: const EdgeInsets.symmetric(
              vertical:16.0,horizontal: 32.0),
         child: Column(
            children: [
               TextFormField(
            decoration:InputDecoration(
              hintText: "Enter Username",
              labelText:"Username",
             ),
             validator: (value) {
              if(value!.isEmpty){
                return "Username cannot be empty";
              }
             
              
              return null;
             },
             onChanged: (value) {
              name=value;
              setState(() {});
             } ,
           ) ,
           TextFormField(
            obscureText:true,
            decoration:InputDecoration(
              hintText: "Enter password",
              labelText:"password",
             ) ,
              validator: (value) {
              if(value!.isEmpty){
                return "Password cannot be empty";
              }
                else if(value.length< 6){
                return "password length should be atleast 6";
              }
              return null;
             },
             ),
             SizedBox(
            height:40.0,
           ),
           Material(
            color:Colors.deepPurple,
            borderRadius:
             BorderRadius.circular(changeButton?50:8),
          child:InkWell(
           //splashColor: Colors.red,
            onTap:()=>moveToHome(context),
         child: AnimatedContainer(
          duration:Duration(seconds:1),
            width: changeButton? 50: 150,
            height:50,
            //color: Colors.deepPurple,
            alignment: Alignment.center,
            child: changeButton
            ?Icon(
              Icons.done,
              color:Colors.white,
            )
            :Text(
              "Login",
            style: TextStyle(
              color:Colors.white,
               fontWeight:FontWeight.bold,
              fontSize:18
              ),
            ),            
           ),
          )
           )
          // ElevatedButton(
            //child: Text("Login"),
            //style: TextButton.styleFrom(minimumSize: Size(150, 50)),
            //onPressed: (){
            // Navigator.pushNamed(context,MyRoutes.homeRoute);
           // },
          //  )
            ],
          )
           
           )
            ],
      )
        )
      )
    );
  }
}