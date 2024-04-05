import 'package:flutter/material.dart';
class tech extends StatefulWidget {
  const tech({super.key});

  @override
  State<tech> createState() => _techState();
}

class _techState extends State<tech> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
     body:SingleChildScrollView(
       child: Column(
         children: [
           Text('helllloooo')
         ],
       ),
     )
    );
  }
}
