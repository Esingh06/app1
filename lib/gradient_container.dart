import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {

   GradientContainer({super.key});

  final startAlignment =Alignment.topLeft;
  final endAlignment =Alignment.bottomRight;

  void rollDice(){
    print("Dice Rolled!");
  }
  @override
  Widget build(BuildContext context) {
    var activeDiceImage = 'assets/images/dice-2.png';
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 63, 8, 165),
            Color.fromARGB(255, 12, 1, 39),
          ],
          begin: startAlignment,
          end: endAlignment,

        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceImage,width: 200),
           TextButton(
             onPressed:rollDice,
             style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
             ),
            child: Text("Roll the Dice",),


          ),
          ],
        ),
        ),
     );
  }
}