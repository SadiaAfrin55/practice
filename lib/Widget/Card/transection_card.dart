
import 'package:flutter/material.dart';
class TransectionCard extends StatelessWidget {
  const TransectionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text('data',style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 5,),
                    CircleAvatar(radius: 2,backgroundColor: Colors.grey,),
                    SizedBox(width: 5,),
                    Text('data',style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(5)
                  ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 4.0,right: 4),
                     child: Text('gggg',style: TextStyle(color: Colors.grey),),
                   ),
                ),
                Text('data',style: TextStyle(fontSize: 16,),)
              ],
            ),
            Row(
              children: [
                Icon(Icons.picture_as_pdf,color: Colors.blue,size: 20,),
                SizedBox(width: 6,),
                Text('data',style: TextStyle(color: Colors.blue,fontSize: 15),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
