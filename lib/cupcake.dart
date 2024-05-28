import 'package:flutter/material.dart';

class MyCupcake extends StatefulWidget {
  const MyCupcake({super.key});

  @override
  State<MyCupcake> createState() => _MyCupcakeState();
}

class _MyCupcakeState extends State<MyCupcake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Sweet Decision - Cupcake", style: TextStyle(color: Colors.white),),
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