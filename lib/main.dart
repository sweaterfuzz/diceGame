import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// new stateful widget
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1, 
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png')
            )
          ),
          Expanded(
            flex: 1, 
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png')
            )
          ),
        ],
      ),
    );
  }
}

// old stateless widget
// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 1, 
//             child: FlatButton(
//               onPressed: (){
//                 print('Left!');
//               },
//               child: Image.asset('images/dice1.png')
//             )
//           ),
//           Expanded(
//             flex: 1, 
//             child: FlatButton(
//               onPressed: (){
//                 print('Right!');
//               },
//               child: Image.asset('images/dice1.png')
//             )
//           ),
//         ],
//       ),
//     );
//   }
// }
