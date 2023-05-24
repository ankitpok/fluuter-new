
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          const Text("Welcome",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Column(children:  [
              const TextField(
                decoration:InputDecoration(
                  hintText: "Enter username",
                  label: Text("Username"),
                ) ,
              ),
              const TextField(
                obscureText: true,
                decoration:InputDecoration(
                  hintText: "Enter password",
                  label: Text("Password"),
                ) ,
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(),
                 child: const Text("Login"))          
            ],),
          )
        ]
   
        )
    );
  }
}