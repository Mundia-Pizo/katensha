import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        //     ListView.builder(
        //       itemCount: chatUsers.length,
        //       shrinkWrap: true,
        //       padding: const EdgeInsets.only(top: 16),
        //       physics: const NeverScrollableScrollPhysics(),
        //       itemBuilder: (context, index){
        //         return ConversationList(
        //           name: chatUsers[index].name,
        //           messageText: chatUsers[index].messageText,
        //           imageUrl: chatUsers[index].imageURL,
        //           time: chatUsers[index].time,
        //           isMessageRead: (index == 0 || index == 3)?true:false,
        //     );
        //   },
        // ),

        //end of the list of doctors 

            Card(child: Row(
              children:[
              // Image(image:AssetImage('iphone13.jpg'), fit: BoxFit.fill,),
              const Card(child: Image(image: AssetImage('doctor1.jpg')),),
              const SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text('Dr Rev', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
                // Expanded(
                //   flex: 1,
                //   child: Text('Dr Rev has worked with so many people in the area of paedriatrics and his the best doctor ever')),
                Text('Paediatric Specialist'),
                SizedBox(height: 20,),
                // Text('K400/hr', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ],)
              
            ]),
            ),

            const SizedBox(height: 15,),
            Card(child: Row(
              children:[
              // Image(image:AssetImage('iphone13.jpg'), fit: BoxFit.fill,),
              const Card(child: Image(image: AssetImage('Doctor2.jpg')),),
              const SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text('Dr Carson', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
                Text('Dental Specialist'),
                SizedBox(height: 20,),
                // Text('K400/hr', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ],)
              
            ]),
            ),

            const SizedBox(height: 15,),
            Card(child: Row(
              children:[
              // Image(image:AssetImage('iphone13.jpg'), fit: BoxFit.fill,),
              const Card(child: Image(image: AssetImage('Doctor3.jpg')),),
              const SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text('Dr Imov', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
                Text('Cardiac Specialist'),
                SizedBox(height: 20,),
                // Text('K400/hr', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ],)
              
            ]),
            ),

             const SizedBox(height: 15,),
            Card(child: Row(
              children:[
              // Image(image:AssetImage('iphone13.jpg'), fit: BoxFit.fill,),
              const Card(child: Image(image: AssetImage('doctor_judy.jpg')),),
              const SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text('Dr Moi', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
                Text('Eye Specialist'),
                SizedBox(height: 20,),
                // Text('K400/hr', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ],)
              
            ]),
            ),

           const SizedBox(height: 15,),
            Card(child: Row(
              children:[
              // Image(image:AssetImage('iphone13.jpg'), fit: BoxFit.fill,),
              const Card(child: Image(image: AssetImage('doctor1.jpg')),),
              const SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text('Dr Judy', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
                Text('Psychatrics Specialist'),
                SizedBox(height: 20,),
                // Text('K400/hr', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ],)
              
            ]),
            ),
          ],)
          ),
        );
  }
}

