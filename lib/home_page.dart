import 'package:bankapp/util/buttom.dart';
import 'package:bankapp/util/my_card.dart';
import 'package:bankapp/util/my_list.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _controller=PageController();
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10,),

                      Text("Card",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                     shape: BoxShape.circle,
                    ),
                      child: Icon(Icons.add)),
                ),
              ],
            ),
            //card
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(CardBalance: 343.533,
                    CardNumber: 84783729,
                    CardMonth: 12,
                    CardYear: 23,
                    color: Colors.purple,
                  ),
                  MyCard(CardBalance: 43232.4,
                    CardNumber: 890952224,
                    CardMonth: 5,
                    CardYear: 24,
                    color: Colors.teal,
                  ),
                  MyCard(CardBalance: 9893.05,
                    CardNumber: 12344895,
                    CardMonth: 8,
                    CardYear: 24,
                    color: Colors.blueGrey,
                  ),
                  MyCard(CardBalance: 2320.9,
                    CardNumber: 098937483,
                    CardMonth: 3,
                    CardYear: 21,
                    color: Colors.deepOrangeAccent,
                  ),
                ],
              ) ,
            ),
          SizedBox(height: 10,),
          SmoothPageIndicator(controller: _controller,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade700,
            ),

          ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               ButtomPage(ImageIcon: 'asset/1.png', textName: 'Send',),
                ButtomPage(ImageIcon: 'asset/2.png', textName: 'Pay',),
                ButtomPage(ImageIcon: 'asset/3.png', textName: 'Bill',),

                
                
              ],
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                 MyList(imgicon: 'asset/4.png', firsttext: 'Statistic', scondtext: 'Income and Payment',),
                  SizedBox(height: 10,),
                  MyList(imgicon: 'asset/5.png', firsttext: 'transaction', scondtext: 'transaction-history',),


                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}
