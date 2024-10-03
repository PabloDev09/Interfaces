import 'package:flutter/material.dart';

class ScreenColors extends StatefulWidget
{
  const ScreenColors({super.key});
  @override
  State<ScreenColors> createState() => ScreenColorsState();
}

class ScreenColorsState extends State<ScreenColors>{

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:
            AppBar(
              title: const Center(child:  Text('COLORES', style: TextStyle(fontSize: 25),)), 
              ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.34,
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: const Color.fromARGB(255, 2, 6, 255),
                    child: const Text(''),
                    ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: const Color.fromARGB(255, 255, 2, 2),
                    child: const Text(''),
                    ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: const Color.fromARGB(255, 23, 255, 2),
                    child: const Text(''),
                    )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: const Color.fromARGB(255, 238, 255, 2),
                    child: const Text(''),
                    ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: const Color.fromARGB(255, 255, 166, 2),
                    )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: const Color.fromARGB(255, 2, 6, 255),
                    child: const Text(''),
                    ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: const Color.fromARGB(255, 255, 2, 2),
                    child: const Text(''),
                    ),
                    Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: const Color.fromARGB(255, 44, 255, 2),
                    child: const Text(''),
                    )
                ],
              ),
               const Center(
                child: Center(
                  child: Text('FIN COLORES', style: TextStyle(fontSize: 25))
                  )
                )
            ],
          ), 
        );
      
    }

}