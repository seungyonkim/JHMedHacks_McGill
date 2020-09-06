import 'package:flutter/material.dart';

class PatientCard extends StatelessWidget {

  final String name;

  PatientCard({ this.name });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(12, 16, 12, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 26, 12, 26),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.redAccent,
                    ),
                    child: Text(
                      "sample",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ),
                ]
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Icon(
                    Icons.call,
                    color: Colors.green,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//             Text(
//               kart.type,
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.grey[800],
//               ),
//             ),
//             SizedBox(height: 8),
//             RaisedButton.icon(
//               onPressed: delete,
//               label: Text("delete this kart"),
//               icon: Icon(Icons.delete),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
