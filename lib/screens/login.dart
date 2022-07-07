import 'package:flutter/material.dart';
import 'package:katensha/screens/register.dart';
import 'package:katensha/screens/layout.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int value=123;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(child:SingleChildScrollView (
        child: Padding( padding:const EdgeInsets.fromLTRB(20, 40, 20,40),
        child:Column(children: [
          const Image(image:AssetImage('store.jpg')),
          const SizedBox(height: 8,),
          const Text('Login', style: TextStyle(fontSize: 48,color: Colors.green,),),
          const SizedBox(height: 15,),
          const TextField (  
            decoration: InputDecoration(  
              border: OutlineInputBorder(),  
              contentPadding: EdgeInsets.all(10),
              labelText: 'Enter email',  
              hintText: 'Enter Your email address'  
            ),  
          ),

          const SizedBox(height: 15,),
          const TextField (  
            obscureText: true,
            decoration: InputDecoration(  
              border: OutlineInputBorder(),  
              contentPadding: EdgeInsets.all(10),
              labelText: 'Enter password',  
              hintText: 'Enter Your password',
            ),
          ),
         const SizedBox(height: 15,),
         ElevatedButton(
          onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Layout()),
            );
          },
         child: const Text('Login'),),
         Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children:  [const Text('Don\'t have an account?',textAlign:TextAlign.center , ),
          const SizedBox(width:8),
           GestureDetector(
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),);
            },
            child:const Text("sign up",style: TextStyle(fontSize: 15,color: Colors.green,)),
          ),
          ]),
           Row(mainAxisAlignment: MainAxisAlignment.center, children: [const Text('Forgot your password?',textAlign:TextAlign.center , ),
          const SizedBox(width:8),
          GestureDetector(
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),);
            },
            child:const Text("reset password",style: TextStyle(fontSize: 15,color: Colors.green,)),
          ),
          ]),

         ],),
         
        ]),
        )
      )
      )
    );
  }
}


