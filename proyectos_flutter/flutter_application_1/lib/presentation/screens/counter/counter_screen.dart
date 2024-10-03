import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {  
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen>{
  
  int counter = 0;
  String click = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(160, 216, 122, 1),
        title: const Center(child: Text('Counter Screen', style: TextStyle(fontSize: 25, color: Color.fromRGBO(255, 255, 255, 1))))
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter', style: const TextStyle(fontSize: 100, fontWeight: FontWeight.w100)), 
            Text(click, style: const TextStyle(fontSize: 30),)
          ]
              ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            CustomButton(icon: Icons.plus_one, onPressed: plusOne),
            SizedBox.fromSize(size: const Size(5, 0)),
            CustomButton(icon: Icons.exposure_minus_1, onPressed: minusOne),
            SizedBox.fromSize(size: const Size(5, 0)),
            CustomButton(icon: Icons.exposure_zero, onPressed: setZero),
        ],
      ),
    );
  }

  void plusOne()
  {
    counter++;
    counter == 1 ? click = 'Click' : click = 'Clicks';
    setState((){});
  }

    void minusOne()
  {
    if(counter - 1 >= 0)
    {
      counter--;
    }
    counter == 1 ? click = 'Click' : click = 'Clicks';
    setState((){});  
  }

    void setZero()
  {
    counter = 0;
    click = 'Clicks';
    setState((){});
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed; 
  
  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      hoverColor: const Color.fromRGBO(160, 216, 122, 1),
      splashColor: const Color.fromARGB(255, 134, 207, 84),
      backgroundColor: const Color.fromARGB(255, 145, 216, 98),
      onPressed: () {
        onPressed();
      },
      child: Icon(icon, color: const Color.fromRGBO(255, 255, 255, 1),),
    );
  }
}
