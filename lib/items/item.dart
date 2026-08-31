import 'package:creativa_app/styles/colors.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  new(this.icon, this.label, this.text, {super.key});
  Icon icon;
  String label;
  String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: style.blue,
                // border: Border.all(color: style.white, width: 5),
              ),
              child: icon,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,

                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(text, softWrap: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
