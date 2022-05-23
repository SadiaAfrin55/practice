
import 'package:flutter/material.dart';
class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      child: Text('A1',style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),
                    const SizedBox(width: 16,),
                    Column(
                      children: [
                        Text('data',style: TextStyle(fontSize: 18,color: Colors.black),),
                        Text('data',style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.monetization_on_outlined,color: Colors.blue,size: 20,),
                    SizedBox(width: 5,),
                    Text('data',style: TextStyle(color: Colors.blue,fontSize: 15),)
                  ],
                ),
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
