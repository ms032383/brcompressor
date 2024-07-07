import 'package:brcompressor/Extrafiles/colors.dart';
import 'package:flutter/material.dart';

class AboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: quincy,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 360,
                          height: 144,
                          color: textt,
                        ),
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Container(child: Text("Hello"),),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Expanded(
                  flex: 2,
                  child: Container(child: Text("Hello"),),),
                Expanded(
                    flex: 1,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 360,
                          height: 144,
                          color: textt,
                        ),
                      ],
                    )),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 360,
                          height: 144,
                          color: textt,
                        ),
                      ],
                    )),
                Expanded(
                  flex: 2,
                  child: Container(child: Text("Hello"),),)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
