import 'package:flutter/material.dart';

class MyPancake extends StatefulWidget {
  List<String> panquecas = [];
  MyPancake(this.panquecas, {super.key});

  @override
  State<MyPancake> createState() => _MyPancakeState();
}

class _MyPancakeState extends State<MyPancake> {
  String infosPanquecas = "";

  @override
  void initState()
  {
    for(int i=0;i<widget.panquecas.length;i++)
    {
      Text(infosPanquecas);
      infosPanquecas = infosPanquecas + "\n\n" + widget.panquecas[i];
    }
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Sweet Decision - Panquecas", style: TextStyle(color: Colors.white, fontFamily: 'EduTASBeginner'),),
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
                  Text(infosPanquecas, style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: 'EduTASBeginner')),
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