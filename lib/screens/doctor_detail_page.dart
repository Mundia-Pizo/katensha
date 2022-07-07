import 'package:flutter/material.dart';
import 'package:katensha/models/doctorModel.dart';
import 'package:katensha/screens/chatDetail.dart';

class DoctorDetailPage extends StatelessWidget {
  const DoctorDetailPage({Key? key, required this.doctor}) : super(key: key);

  final Doctors doctor;

  @override
  Widget build(BuildContext context) {
       return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.05,
        ),
        body:Padding(padding: const EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            decoration:BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image:AssetImage(doctor.imageURL)),
            ),
            ),
          const SizedBox(height: 16,),
          const Text('Bio', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          Padding(
            padding: const EdgeInsets.all(20),
            child:Expanded(child: Text(doctor.description, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)) 
          ),
          const SizedBox(height: 16,),
          const Text('Working Hours', style: TextStyle(fontSize:22, fontWeight: FontWeight.bold)),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    
                  ),
                  onPressed: (){}, child: Row(
                    children: const [
                      Text('08:00 hrs')
                    ],
                    )
                  ),

                  ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    
                  ),
                  child: Row(
                    children: const [
                      Text('12:00 hrs')
                    ],
                    )
                  ),

                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,

                  ),
                  onPressed: (){}, 
                  child: Row(
                    children: const [
                      Text('16:00 hrs')
                    ],
                    )
                  ),

            ],),
            const SizedBox(height: 20,),
             ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 111, 234, 115),
                    elevation: 0.5,
                  ),
                  onPressed: (){
                    Navigator.push(
                      context, 
                    MaterialPageRoute(builder: (context) => const ChatDetailPage()),
                    );
                  }, 
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 120, right: 100),
                        child:Text('Chat with Doc'))
                    ],
                    )
            ),
          
        ],)
        ) 
       );
  }
}