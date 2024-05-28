import 'package:flutter/material.dart';

class MyCake extends StatefulWidget {
  const MyCake({super.key});

  @override
  State<MyCake> createState() => _MyCakeState();
}

class _MyCakeState extends State<MyCake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Sweet Decision - Bolo", style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 255, 189, 211),
        centerTitle: true,
        iconTheme: IconThemeData(color:  Colors.white),
      ),

      body: Container
      (
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration
        (
          image: DecorationImage
          (
            image: AssetImage('assets/images/back.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column
        (

        )
      )
    );
  }
}