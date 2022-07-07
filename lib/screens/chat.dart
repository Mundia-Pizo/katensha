import 'package:flutter/material.dart';

import '../models/chatUserModel.dart';
import '../widgets/coversationList.dart';

class ChatePage extends StatefulWidget {
  const ChatePage({Key? key}) : super(key: key);

  @override
  State<ChatePage> createState() => _ChatePageState();
}

class _ChatePageState extends State<ChatePage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "doctor1.jpg", time: "Now"),
    ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "Doctor3.jpg", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "Doctor2.jpg", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL:"doctor_judy.jpg", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "doctor1.jpg", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", messageText: "will update you in evening",imageURL: "Doctor2.jpg", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "Doctor3.jpg", time: "24 Feb"),
    ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "doctor1.jpg", time: "18 Feb"),
    ChatUsers(name: "John Wick", messageText: "How are you?", imageURL:"doctor_judy.jpg", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
      child: Container(
      color:Colors.white,
      child:Column(
      children: [
      SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    const Text("Conversations",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children:const [
                          Icon(Icons.add,color: Colors.pink,size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),

      ListView.builder(
      itemCount: chatUsers.length,
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 16),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
        return ConversationList(
          name: chatUsers[index].name,
          messageText: chatUsers[index].messageText,
          imageUrl: chatUsers[index].imageURL,
          time: chatUsers[index].time,
          isMessageRead: (index == 0 || index == 3)?true:false,
    );
  },
),
])
 )
 );
     
  }
}