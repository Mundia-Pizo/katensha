import 'package:flutter/material.dart';
import 'package:katensha/screens/doctor_detail_page.dart';

import '../models/doctorModel.dart';


// ignore: must_be_immutable
class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Doctors> doctors = [
    Doctors(name: "Jane Russel", description: "Doctor Jane Russel, Paediatrics doctor, 15 years, known for the best surgeries on kids including the famous sepearation of the two kids in germany", imageURL: "doctor1.jpg", bio: "BSC Medicine, MSC Paedriatrics, Doctorate Suugery"),
    Doctors(name: "Glady's Murphy", description: "Neural Surgeon, worked for john Hopkins Hospital for 5 years, practitioner in Ben Carson's surgery, Smart and hard working", imageURL: "Doctor3.jpg", bio: "BSC Medicine, MSC Paedriatrics, Doctorate Suugery"),
    Doctors(name: "Jorge Henry", description: "Neural Surgeon, worked for john Hopkins Hospital for 5 years, practitioner in Ben Carson's surgery, Smart and hard working", imageURL: "Doctor2.jpg", bio: "BSC Medicine, MSC Paedriatrics, Doctorate Suugery"),
    Doctors(name: "Philip Fox", description: "Neural Surgeon, worked for john Hopkins Hospital for 5 years, practitioner in Ben Carson's surgery, Smart and hard working", imageURL:"doctor_judy.jpg", bio: "BSC Medicine, MSC Paedriatrics, Doctorate Suugery"),
    Doctors(name: "Debra Hawkins", description: "Neural Surgeon, worked for john Hopkins Hospital for 5 years, practitioner in Ben Carson's surgery, Smart and hard working", imageURL: "doctor1.jpg", bio: "BSC Medicine, MSC Paedriatrics, Doctorate Suugery"),
    Doctors(name: "Jacob Pena", description: "Neural Surgeon, worked for john Hopkins Hospital for 5 years, practitioner in Ben Carson's surgery, Smart and hard working",imageURL: "Doctor2.jpg", bio: "BSC Medicine, MSC Paedriatrics, Doctorate Suugery"),
    Doctors(name: "Andrey Jones", description: "Neural Surgeon, worked for john Hopkins Hospital for 5 years, practitioner in Ben Carson's surgery, Smart and hard working", imageURL: "Doctor3.jpg", bio: "BSC Medicine, MSC Paedriatrics, Doctorate Suugery"),
    Doctors(name: "John Wick", description: "Neural Surgeon, worked for john Hopkins Hospital for 5 years, practitioner in Ben Carson's surgery, Smart and hard working", imageURL: "doctor1.jpg", bio: "BSC Medicine, MSC Paedriatrics, Doctorate Suugery"),
    Doctors(name: "John Wick", description: "Neural Surgeon, worked for john Hopkins Hospital for 5 years, practitioner in Ben Carson's surgery, Smart and hard working", imageURL:"doctor_judy.jpg", bio: "BSC Medicine, MSC Paedriatrics, Doctorate Suugery"),
  ];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body:Padding(
          padding: const EdgeInsets.all(12),
          child:ListView(
            children: [
            // this is where the scrollview for some widgets will be 
            Card(child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                color: Colors.green,
              ),
              alignment: const Alignment(0, 0),
              height: 250,
              child:Padding(padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text('Hi John', style: TextStyle(fontSize: 24, fontWeight: 
                  FontWeight.bold),),
                  SizedBox(height: 15,),
                  Text('Welcome to katensha, Find your Doctor at your fingertips',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700), )

              ],)
              )),
              ),

            // Adding a spacer 
            const SizedBox(height: 15,),

            //scrollview with category butttons
            const Text('What do you need?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: (){}, child: Row(
                    children: const [
                      Icon(Icons.business),
                      Text('General')
                    ],
                    )
                  ),

                  ElevatedButton(
                  onPressed: (){}, child: Row(
                    children: const [
                      Icon(Icons.heart_broken, color: Colors.red),
                      Text('Cardiac')
                    ],
                    )
                  ),

                  ElevatedButton(
                  onPressed: (){}, child: Row(
                    children: const [
                      Icon(Icons.baby_changing_station, color: Colors.brown,),
                      Text('Padiatrics')
                    ],
                    )
                  ),

            ],),

            //adding a apacer 
            const SizedBox(height: 15,),
            
            const Text('Top doctors', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            //list of top doctors 
            ListView.builder(
              itemCount: doctors.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => DoctorDetailPage(doctor: doctors[index]))
                  );
                },
              child:Card(child: Row(
              children:[
              // Image(image:AssetImage('iphone13.jpg'), fit: BoxFit.fill,),
              Card(child: Image(image: AssetImage(doctors[index].imageURL)),),
              const SizedBox(width: 15,),
              Expanded(child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                Text(doctors[index].name, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
                Text(doctors[index].bio),
                const SizedBox(height: 20,),
                // Text('K400/hr', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ],)
              )
            ]),
            ),

                  
            );
          },
        ),

        //end of the list of doctors 
       ])
           )
        );
  }
}

