import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorDetailPage extends StatefulWidget {
  const DoctorDetailPage({Key? key}) : super(key: key);

  @override
  State<DoctorDetailPage> createState() => _DoctorDetailPageState();
}

class _DoctorDetailPageState extends State<DoctorDetailPage> {
  @override
  Widget build(BuildContext context) {
      return const Scaffold(
        body:Center(child: Text('Doctor Detail Page'),)
      );
  }
}