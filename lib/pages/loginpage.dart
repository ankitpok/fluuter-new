
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Column(
        children: [
          const SizedBox(height: 20,),
           Text("Welcome $name",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Column(children:  [
               TextFormField(
                decoration:const InputDecoration(
                  hintText: "Enter username",
                  label: Text("Username"),
                ) ,
                onChanged: (value){
                  name =value;
                  setState(() {
                    
                  });
                },
              ),
              const TextField(
                obscureText: true,
                decoration:InputDecoration(
                  hintText: "Enter password",
                  label: Text("Password"),
                ) ,
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () async{
                  
                  setState(() {
                    changeButton= true;
                  });
                  await Future.delayed(const Duration(seconds: 1));
                    Navigator.pushNamed(context, "/homepage");

                },
                child: AnimatedContainer(
                  height: 50,
                  width: changeButton? 50 :100,
                  duration: const Duration(seconds: 1),
                  
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(changeButton?100:8),
                    //shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                  ),
                  child:
                   changeButton?const Icon(Icons.done, color:Colors.white):const Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                    
                    
              
                  ),
              )
              //ElevatedButton(
              //  onPressed: () {
              //    Navigator.pushNamed(context, "/homepage");
              //  },
              //  style: TextButton.styleFrom(),
              //   child: const Text("Login"))          
            ],),
          )
        ]
   
        )
    );
  }
}