import 'package:flutter/material.dart';

class MyCupcake extends StatefulWidget {
  List<String> cupcake = [];
  MyCupcake(this.cupcake, {super.key});

  @override
  State<MyCupcake> createState() => _MyCupcakeState();
}

class _MyCupcakeState extends State<MyCupcake> {

  String infosCupcake = "";

  @override
  void initState()
  {
    for(int i=0;i<widget.cupcake.length;i++)
    {
      Text(infosCupcake);
      infosCupcake = infosCupcake + "\n\n" + widget.cupcake[i];
    }
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Sweet Decision - Cupcake", style: TextStyle(color: Colors.white, fontFamily: 'EduTASBeginner'),),
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
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.6), // Ajuste a opacidade aqui
          ),
        child: Column
        (
          children: 
          [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column
              (
                children: 
                [
                  Text(infosCupcake, style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: 'EduTASBeginner')),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Voltar", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 189, 211),
                      minimumSize: Size(200, 50),
                    ),
                  ),
                ],
              ) 
            ),
          ],

        )
      )
      )
    );
  }
}