// import 'package:flutter/material.dart';

// class LevelButtonWidget extends StatelessWidget {
//   LevelButtonWidget({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             style: ButtonStyle(
//                 minimumSize:
//                     MaterialStateProperty.all<Size>(Size.fromRadius(20)),
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
//             onPressed: () {},
//             child: Text('Facil'),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           ElevatedButton(
//             style: ButtonStyle(
//                 minimumSize:
//                     MaterialStateProperty.all<Size>(Size.fromRadius(20)),
//                 backgroundColor:
//                     MaterialStateProperty.all<Color>(Colors.green)),
//             onPressed: () {},
//             child: Text('Medio'),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           ElevatedButton(
//             style: ButtonStyle(
//                 minimumSize:
//                     MaterialStateProperty.all<Size>(Size.fromRadius(20)),
//                 backgroundColor:
//                     MaterialStateProperty.all<Color>(Colors.redAccent)),
//             onPressed: () {},
//             child: Text('Dificil'),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           ElevatedButton(
//             style: ButtonStyle(
//                 minimumSize:
//                     MaterialStateProperty.all<Size>(Size.fromRadius(20)),
//                 backgroundColor:
//                     MaterialStateProperty.all<Color>(Colors.purple)),
//             onPressed: () {},
//             child: Text('Avancado'),
//           ),
//         ],
//       ),
//     );
//   }
// }
