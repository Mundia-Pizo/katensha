import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:katensha/screens/login.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  //some dummy data to fill in the form 
  final String firstName = 'John';
  final String lastName = 'Doe';
  final String email = 'stacypizom@gmail.com';
  final String username = 'johndoe';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(15),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        Center(
          child: Center(
            child:Column(children: [ 
              const Image(image:AssetImage('account.jpg')),
              Text('$firstName $lastName', style: const TextStyle(fontSize: 26,color: Colors.black,fontWeight: FontWeight.w500),),

               TextField (
                decoration: InputDecoration(  
                  labelText: 'username',  
                  contentPadding: const EdgeInsets.all(10),
                  labelStyle: const TextStyle(fontSize: 14),
                  hintText: username,  
                ),  
              ),

              TextField (
                decoration: InputDecoration(  
                  labelText: 'email',  
                  contentPadding: const EdgeInsets.all(10),
                  labelStyle: const TextStyle(fontSize: 14),
                  hintText: email,  
                ),  
              ),

              TextField (
                decoration: InputDecoration(  
                  labelText: 'first name ',  
                  contentPadding: const EdgeInsets.all(10),
                  labelStyle:const TextStyle(fontSize: 14),
                  hintText: firstName,  
                ),  
              ),

              TextField (
                decoration: InputDecoration(  
                  labelText: 'last name ',  
                  contentPadding:const EdgeInsets.all(10),
                  labelStyle: const TextStyle(fontSize: 14),
                  hintText: lastName,  
                ),  
              ),
       
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const LoginPage()),);
                },
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [ 
                  Icon(Icons.logout, color: Colors.red,),
                  SizedBox(width: 8,),
                  Text('Logout', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),),
                ]),
                ),

            ]),
          ),
        )
      ]),
      ),
      ),
    );
    
  }
}

// this is the accounts page 
