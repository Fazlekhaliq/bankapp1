import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  final double CardBalance;
  final int  CardNumber;
  final int CardMonth;
  final int CardYear;
  final color;
  const MyCard({Key? key, required this.CardBalance, required this.CardNumber,
    required this.CardMonth, required this.CardYear, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 300,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Balance",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Image.asset("asset/6.png",height: 50,),

              ],
            ),

            const SizedBox(height: 10,),
             Text('\$' + CardBalance.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(CardNumber.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                Text(CardMonth.toString()+'/'+CardYear.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
