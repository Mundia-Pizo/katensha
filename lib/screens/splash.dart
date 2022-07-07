import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  final svgPic = 'assets/med.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:Center(
        child: Column(
        children: [
          SvgPicture.asset('med1.svg'),
          const Image(image: AssetImage('katensha2.png')),
          const Text('Splash screen',style: TextStyle(fontSize:32)),
        ],)
    ),
    );
  }
}

