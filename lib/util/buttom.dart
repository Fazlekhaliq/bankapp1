import 'package:flutter/material.dart';
class ButtomPage extends StatelessWidget {
  final String ImageIcon;
  final String textName;
  const ButtomPage({Key? key, required this.ImageIcon, required this.textName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 20,
                  spreadRadius: 3,
                )
              ]
          ),
          child: Image.asset(ImageIcon),
        ),
        SizedBox(height: 10,),
        Text(textName,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold

          ),
        ),
      ],
    );
  }
}
