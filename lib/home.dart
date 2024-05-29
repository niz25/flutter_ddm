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
  List<String> bolo = ["Bolo de Chocolate = R\$35,00", "Bolo Formigueiro = R\$30,00", "Bolo de Laranja: R\$30,00"];
  List<String> cupcake = ["Cupcake de Morango = R\$10,00", "Cupcake de Chololate com Recheio de Brigadeiro = R\$18,00", "Cupcake de Baunilha = R\$10,00"];
  List<String> panquecas = ["Panqueca de Chocolate com Morango = R\$20,00", "Panqueca de Cholate com Banana e Pasta de Amendoim = R\$35,00", "Panqueca Clássica Americana (Manteiga e Xarope) = R\$38,00"];

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Sweet Decision", style: TextStyle(color: Colors.white, fontFamily: 'EduTASBeginner'),),
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
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.6), // Ajuste a opacidade aqui
          ),
        child: Column
        (
          children: 
          [
            Padding
            (
              padding: EdgeInsets.all(30),
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Text("Escolha uma das opcoes das nossas deliciosas ", style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'EduTASBeginner'),),
                  Text("sobremesas abaixo: ", style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'EduTASBeginner'))
                ],
              )
            ),            
            SizedBox(height: 370,),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyCake(bolo)));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyCupcake(cupcake)));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyPancake(panquecas)));
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
                  
                  Text("Bolo", style: TextStyle(color: Colors.white, fontFamily: 'EduTASBeginner'),),
                  Padding
                  (
                    padding: EdgeInsets.fromLTRB(35, 0, 15, 0),
                    child: Text("Cupcake", style: TextStyle(color: Colors.white, fontFamily: 'EduTASBeginner'),),
                  ),                  
                  Text("Panqueca", style: TextStyle(color: Colors.white, fontFamily: 'EduTASBeginner'),),

                ],
              ),
            ),
            
          ],
        ),
      ),
      )
    );
  }
  
}