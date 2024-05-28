import 'package:exercicio_navegacao/cake.dart';
import 'package:exercicio_navegacao/cupcake.dart';
import 'package:exercicio_navegacao/pancake.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Sweet Decision", style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 255, 189, 211),
        centerTitle: true,
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
          children: 
          [
            SizedBox(height: 450,),
            Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: 
              [
                MouseRegion
                (
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector
                  (
                    child:  Image.asset('assets/images/cake.png', height: 100, width: 100,),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyCake()));
                    },
                  ),
                ),

                MouseRegion
                (
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector
                  (
                    child:  Image.asset('assets/images/cupcakeLimao.png', height: 100, width: 100,),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyCupcake()));
                    },
                  ),
                ),

                MouseRegion
                (
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector
                  (
                    child:  Image.asset('assets/images/pancakes.png', height: 100, width: 100,),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyPancake()));
                    },
                  ),
                ),
              ],
            ),

            Padding
            (
              padding: EdgeInsets.fromLTRB(35, 10, 25, 10),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
                [
                  
                  Text("Bolo", style: TextStyle(color: Colors.white),),
                  Padding
                  (
                    padding: EdgeInsets.fromLTRB(35, 0, 15, 0),
                    child: Text("Cupcake", style: TextStyle(color: Colors.white),),
                  ),                  
                  Text("Panqueca", style: TextStyle(color: Colors.white),),

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}