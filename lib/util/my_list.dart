import 'package:flutter/material.dart';
class MyList extends StatelessWidget {
  final String imgicon;
  final String firsttext;
  final String scondtext;

  const MyList({Key? key, required this.imgicon, required this.firsttext, required this.scondtext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(12),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(imgicon),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(firsttext,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10,),
            Text(scondtext,
              style: TextStyle(
                fontWeight: FontWeight.bold,

              ),
            ),
          ],
        ),

        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
