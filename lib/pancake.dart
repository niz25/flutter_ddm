import 'package:flutter/material.dart';

class MyPancake extends StatefulWidget {
  const MyPancake({super.key});

  @override
  State<MyPancake> createState() => _MyPancakeState();
}

class _MyPancakeState extends State<MyPancake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Sweet Decision - Panquecas", style: TextStyle(color: Colors.white),),
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