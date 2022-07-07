import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return const Scaffold(
        body: Center(child: Text('Detail Page', style: TextStyle(fontSize: 32, color: Colors.yellow),),),
      );
  }
}