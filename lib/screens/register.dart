import 'package:flutter/material.dart';
import 'package:katensha/screens/login.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(child:SingleChildScrollView (
        child: Padding( padding:const EdgeInsets.fromLTRB(20, 40, 20,40),
        child:Column(children:  [
         const Image(image:AssetImage('store.jpg'),),
         const Text('Sign up', style: TextStyle(fontSize: 32,color: Colors.green,),),
         const SizedBox(height: 25,),
         const  TextField (  
            decoration: InputDecoration(  
              border:OutlineInputBorder(),
              contentPadding: EdgeInsets.all(10),
              labelText: 'Enter your Name',  
              labelStyle: TextStyle(fontSize: 16),
              hintText: 'Enter Name'  
            ),  
          ),

        const  SizedBox(height: 15,),
         const TextField (  
            decoration: InputDecoration(  
              border: OutlineInputBorder(),  
              contentPadding: EdgeInsets.all(10),
              labelText: 'Enter email',  
              hintText: 'johndoe@email.com'  
            ),  
          ),

        const  SizedBox(height: 15,),
        const  TextField (  
            obscureText: true,
            decoration: InputDecoration(  
              border: OutlineInputBorder(),  
              contentPadding: EdgeInsets.all(10),
              labelText: 'Enter password',  
              hintText: 'Enter Your password',
            ),  
          ),

         const SizedBox(height: 15,),
          const TextField (
            obscureText: true,
            decoration: InputDecoration(  
              border: OutlineInputBorder(),  
              labelText: 'Comfirm password',  
              contentPadding: EdgeInsets.all(10),
              labelStyle: TextStyle(fontSize: 14),
              hintText: 'Comfirm password'  
            ),  
          ),

         const SizedBox(height: 15,),

         // firebase registration 
         ElevatedButton(
          onPressed: () {
              Navigator.pop(context);
          },

          child:const Text('Register'),),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [const Text('Already have an account?',textAlign:TextAlign.center , ),
          const SizedBox(width:8),
          GestureDetector(
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),);
            },
            child:const Text("login",style: TextStyle(fontSize: 15,color: Colors.green,)),
          ),
          ]),
        ]),
        )
      )
      )
      );
  }
}